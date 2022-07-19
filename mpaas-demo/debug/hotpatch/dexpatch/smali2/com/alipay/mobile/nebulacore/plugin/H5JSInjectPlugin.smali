.class public Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5JSInjectPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 6
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 60
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 61
    .local v2, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string v3, "H5JSInjectPlugin"

    if-nez v0, :cond_0

    .line 62
    const-string v0, "param is null"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void

    .line 65
    :cond_0
    const-string v0, "jsUrl"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "jsUrl":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "jsUrl = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 68
    sput-object v0, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->H5_LOAD_JS:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 70
    .local v1, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v1, v3

    if-eqz v3, :cond_1

    .line 71
    instance-of v3, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v3, :cond_1

    .line 72
    move-object v3, v1

    check-cast v3, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    move-result-object v3

    .line 73
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v3, v4, v0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadDynamicJs4Jsapi(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 77
    .end local v1    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_1
    return-void
.end method

.method private static b(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 4
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 81
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const-string v0, "h5_read_use_webview_config"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setBooleanConfig(Ljava/lang/String;Z)V

    .line 83
    const-string v0, "useUC"

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    .local v0, "useUCWebView":Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "useUCWebView "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5JSInjectPlugin"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "h5_use_uc_webview"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setBooleanConfig(Ljava/lang/String;Z)V

    .line 87
    .end local v0    # "useUCWebView":Z
    :cond_0
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 42
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "action":Ljava/lang/String;
    const-string v1, "insertJS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 45
    return v2

    .line 46
    :cond_0
    const-string v1, "switchWebView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 48
    return v2

    .line 49
    :cond_1
    const-string v1, "getPhoneStateInfo4Debug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5NebulaDebugProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5NebulaDebugProvider;

    const/4 v3, 0x0

    .line 51
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/H5NebulaDebugProvider;
    move-object v3, v1

    if-eqz v1, :cond_2

    .line 52
    invoke-interface {v3, p1, p2}, Lcom/alipay/mobile/nebula/provider/H5NebulaDebugProvider;->getPhoneStateInfo4Debug(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 54
    :cond_2
    return v2

    .line 56
    .end local v3    # "provider":Lcom/alipay/mobile/nebula/provider/H5NebulaDebugProvider;
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 35
    const-string v0, "insertJS"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 36
    const-string v0, "switchWebView"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string v0, "getPhoneStateInfo4Debug"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 38
    return-void
.end method

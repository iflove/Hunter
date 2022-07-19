.class public Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5SearchPlugin.java"


# instance fields
.field private a:Lcom/alipay/mobile/h5container/api/H5Page;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 30
    return-void
.end method

.method private static a()Lcom/alipay/mobile/nebula/search/H5InputCallback;
    .locals 2

    .line 40
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/search/H5InputCallback;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/search/H5InputCallback;

    .line 40
    return-object v0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 10
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 46
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 48
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "navSearchBar"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    .line 49
    const-string v2, "actionType"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v5, v4

    .line 50
    .local v5, "actionType":Ljava/lang/String;
    move-object v5, v2

    const-string v6, "show"

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v6, "param"

    const-string v7, "value"

    if-eqz v2, :cond_0

    .line 52
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-static {v1, v6, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 54
    .local v4, "param":Lcom/alibaba/fastjson/JSONObject;
    nop

    .line 55
    const-string v6, "placeholder"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 54
    const-string v8, "navSearchBar_placeholder"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    nop

    .line 57
    invoke-static {v4, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 56
    const-string v7, "navSearchBar_value"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    nop

    .line 59
    const-string v6, "maxLength"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v6

    .line 58
    const-string v7, "navSearchBar_maxLength"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v6

    .line 61
    invoke-interface {v6, v2}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitleBarSearch(Landroid/os/Bundle;)Landroid/view/View;

    .line 63
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v6

    const-class v7, Lcom/alipay/mobile/nebula/search/H5InputListen;

    .line 64
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-direct {v8, v9}, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 68
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "param":Lcom/alibaba/fastjson/JSONObject;
    goto/16 :goto_0

    :cond_0
    const-string v2, "hide"

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v2, :cond_7

    .line 70
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/view/H5TitleView;->switchToTitleBar()V

    .line 71
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    goto/16 :goto_0

    .line 73
    :cond_1
    const-string v2, "focus"

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    invoke-static {}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->a()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz p2, :cond_7

    .line 75
    invoke-static {}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->a()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/search/H5InputCallback;->focusInNavSearchBar()V

    .line 76
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    goto/16 :goto_0

    .line 78
    :cond_2
    const-string v2, "blur"

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    invoke-static {}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->a()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz p2, :cond_7

    .line 80
    invoke-static {}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->a()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/search/H5InputCallback;->focusOutNavSearchBar()V

    .line 81
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    goto/16 :goto_0

    .line 83
    :cond_3
    const-string v2, "set"

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    invoke-static {}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->a()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz p2, :cond_7

    .line 85
    nop

    .line 86
    invoke-static {v1, v6, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "value":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->a()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/alipay/mobile/nebula/search/H5InputCallback;->setNavSearchBarValue(Ljava/lang/String;)V

    .line 89
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 90
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 92
    :cond_4
    const-string v2, "get"

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 93
    invoke-static {}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->a()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz p2, :cond_7

    .line 94
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 95
    .local v4, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v8, "success"

    invoke-virtual {v2, v8, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->a()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/search/H5InputCallback;->getNavSearchBarValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v7, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    nop

    .line 98
    invoke-interface {p2, v4}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 99
    .end local v4    # "data":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_0

    .line 101
    :cond_5
    const-string v2, "enable"

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 102
    invoke-static {}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->a()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz p2, :cond_7

    .line 103
    invoke-static {}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->a()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/search/H5InputCallback;->enable()V

    .line 104
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    goto :goto_0

    .line 107
    :cond_6
    const-string v2, "disable"

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 108
    invoke-static {}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->a()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz p2, :cond_7

    .line 109
    invoke-static {}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->a()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/search/H5InputCallback;->disable()V

    .line 110
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 114
    .end local v5    # "actionType":Ljava/lang/String;
    :cond_7
    :goto_0
    return v3
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 34
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 35
    const-string v0, "navSearchBar"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 36
    return-void
.end method

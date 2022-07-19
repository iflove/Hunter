.class public Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5WebViewMessagePlugin.java"


# static fields
.field public static final GET_EMBED_WEBVIEW_ENV:Ljava/lang/String; = "getEmbedWebViewEnv"

.field public static final POST_WEBVIEW_MESSAGE:Ljava/lang/String; = "postWebViewMessage"


# instance fields
.field private a:Lcom/alipay/mobile/h5container/api/H5Page;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private a()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 122
    .local v0, "mainDOMPage":Lcom/alipay/mobile/h5container/api/H5Page;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v2, "MINI-PROGRAM-WEB-VIEW-PAGE-TAG"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 123
    .local v2, "obj":Ljava/lang/Object;
    move-object v2, v1

    instance-of v1, v1, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_0

    .line 124
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 126
    :cond_0
    return-object v0
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 4
    .param p1, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 150
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_1

    .line 151
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 152
    .local v2, "TAG":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1, p1}, Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;->a(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .end local v2    # "TAG":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 154
    :catchall_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getEnv...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5WebViewMessagePlugin"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;->a(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 158
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 16
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 61
    move-object/from16 v1, p0

    const-string v0, "viewId"

    const-string v2, "param"

    const-string v3, "callback"

    const-string v4, "detail"

    const-string v5, "message"

    const-string v6, "type"

    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v8, "H5WebViewMessagePlugin"

    if-nez v7, :cond_0

    .line 62
    const-string v0, "postWebViewMessage...h5Page is null"

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void

    .line 67
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, "type":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "postWebViewMessage...type="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, "nbcomponent.webview.onFromMessage"

    const-string v11, "element"

    const/4 v12, 0x0

    if-eqz v9, :cond_1

    .line 73
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 74
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-static {v2, v4, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 75
    .local v2, "detail":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v0, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {v0, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "element":Ljava/lang/String;
    invoke-virtual {v0, v11, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;->a()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v4

    invoke-interface {v4, v10, v0, v12}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 83
    .end local v0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "detail":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "element":Ljava/lang/String;
    return-void

    .line 84
    :cond_1
    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "appId":Ljava/lang/String;
    invoke-virtual {v1, v4, v7}, Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "postWebViewMessage...type:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " will-be-intercepted"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void

    .line 92
    :cond_2
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 94
    .local v5, "forwardObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v9

    .line 95
    .local v9, "callback":I
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v13

    invoke-static {v13, v2, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v13

    .line 97
    .local v13, "param":Lcom/alibaba/fastjson/JSONObject;
    iget-object v14, v1, Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v14}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v14

    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 98
    .local v14, "viewId":Ljava/lang/String;
    iget-object v15, v1, Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v15}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v15

    invoke-static {v15, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 100
    .local v15, "element":Ljava/lang/String;
    invoke-virtual {v5, v0, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {v5, v11, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {v5, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v5, v2, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;->a()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    invoke-interface {v0, v10, v5, v12}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v4    # "appId":Ljava/lang/String;
    .end local v5    # "forwardObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "type":Ljava/lang/String;
    .end local v9    # "callback":I
    .end local v13    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "viewId":Ljava/lang/String;
    .end local v15    # "element":Ljava/lang/String;
    return-void

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "postWebViewMessage...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 4
    .param p0, "isMiniProgramEnv"    # Z
    .param p1, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 167
    if-nez p1, :cond_0

    return-void

    .line 169
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 170
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "miniprogram"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-interface {p1, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 172
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 49
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 51
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "postWebViewMessage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getEmbedWebViewEnv"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 57
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 37
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 38
    const-string v0, "postWebViewMessage"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 39
    const-string v0, "getEmbedWebViewEnv"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5WebViewMessagePlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 45
    return-void
.end method

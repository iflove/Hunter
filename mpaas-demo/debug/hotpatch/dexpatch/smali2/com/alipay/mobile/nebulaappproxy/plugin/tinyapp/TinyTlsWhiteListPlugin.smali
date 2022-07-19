.class public Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyTlsWhiteListPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "TinyTlsWhiteListPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 15
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-object/from16 v1, p2

    .line 43
    if-eqz p1, :cond_a

    .line 44
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 45
    .local v0, "params":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    .line 46
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    const/4 v3, 0x0

    .line 47
    .local v3, "tinyApp":Z
    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 48
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "isTinyApp"

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v5

    move v3, v5

    .line 51
    :cond_0
    if-nez v3, :cond_1

    invoke-super/range {p0 .. p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v4

    return v4

    .line 53
    :cond_1
    const-string/jumbo v5, "url"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "url":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getHostAppId(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, "appId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 56
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v8

    .line 57
    .local v9, "uri":Landroid/net/Uri;
    move-object v9, v7

    if-eqz v7, :cond_a

    .line 58
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "scheme":Ljava/lang/String;
    const-string v10, "downloadFile"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, "http"

    const/16 v12, 0x14

    const/4 v13, 0x1

    if-nez v10, :cond_7

    :try_start_1
    const-string/jumbo v10, "uploadFile"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "httpRequest"

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string/jumbo v10, "request"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto/16 :goto_0

    .line 77
    :cond_2
    const-string v10, "connectSocket"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 78
    const-string/jumbo v10, "ws"

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 79
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .local v8, "mixService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    move-object v8, v10

    const-string/jumbo v11, "\u8bf7\u6c42url\u4e0d\u652f\u6301ws,\u8bf7\u4f7f\u7528wss"

    if-eqz v10, :cond_3

    .line 81
    :try_start_2
    invoke-interface {v8, v6}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->allowedUseTlsWhiteList(Ljava/lang/String;)Z

    move-result v10

    .line 82
    .local v4, "allowed":Z
    if-nez v10, :cond_3

    .line 83
    invoke-interface {v1, v12, v11}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 84
    return v13

    .line 87
    .end local v4    # "allowed":Z
    :cond_3
    invoke-static {v2, v6}, Lcom/alipay/mobile/nebulaappproxy/utils/net/TinyAppNetSecurityUtils;->isForceUSeSSL(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 88
    invoke-interface {v1, v12, v11}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 89
    return v13

    .line 91
    .end local v8    # "mixService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    :cond_4
    goto/16 :goto_1

    .line 92
    :cond_5
    const-string v10, "h5PageShouldLoadUrl"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 93
    if-eqz v2, :cond_a

    .line 94
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v10

    const-string v12, "MINI-PROGRAM-WEB-VIEW-TAG"

    const-string v14, ""

    invoke-static {v10, v12, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 95
    .local v8, "embedWebViewParentAppId":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 96
    invoke-static {v7, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 97
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v10

    .line 98
    .local v4, "mixService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    move-object v4, v10

    if-eqz v10, :cond_6

    .line 99
    invoke-interface {v4, v6}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->allowedUseTlsWhiteList(Ljava/lang/String;)Z

    move-result v10

    .line 100
    if-nez v10, :cond_6

    .line 104
    return v13

    .line 107
    :cond_6
    invoke-static {v2, v6}, Lcom/alipay/mobile/nebulaappproxy/utils/net/TinyAppNetSecurityUtils;->isForceUSeSSL(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 111
    return v13

    .line 62
    .end local v4    # "mixService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    .end local v8    # "embedWebViewParentAppId":Ljava/lang/String;
    :cond_7
    :goto_0
    invoke-static {v7, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 63
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    .local v8, "mixService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    move-object v8, v10

    const-string/jumbo v11, "\u8bf7\u6c42url\u4e0d\u652f\u6301http,\u8bf7\u4f7f\u7528https"

    if-eqz v10, :cond_8

    .line 65
    :try_start_3
    invoke-interface {v8, v6}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->allowedUseTlsWhiteList(Ljava/lang/String;)Z

    move-result v10

    .line 66
    .local v4, "allowed":Z
    if-nez v10, :cond_8

    .line 67
    invoke-interface {v1, v12, v11}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 68
    return v13

    .line 71
    .end local v4    # "allowed":Z
    :cond_8
    invoke-static {v2, v6}, Lcom/alipay/mobile/nebulaappproxy/utils/net/TinyAppNetSecurityUtils;->isForceUSeSSL(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 72
    invoke-interface {v1, v12, v11}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    return v13

    .line 75
    .end local v8    # "mixService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    :cond_9
    goto :goto_1

    .line 120
    .end local v0    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v3    # "tinyApp":Z
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "appId":Ljava/lang/String;
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v9    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "TinyTlsWhiteListPlugin"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 122
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_a
    nop

    .line 123
    :goto_1
    invoke-super/range {p0 .. p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    return v0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 31
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 32
    const-string v0, "downloadFile"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 33
    const-string/jumbo v0, "uploadFile"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 34
    const-string v0, "httpRequest"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 35
    const-string v0, "connectSocket"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 36
    const-string v0, "h5PageShouldLoadUrl"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string/jumbo v0, "request"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 38
    return-void
.end method

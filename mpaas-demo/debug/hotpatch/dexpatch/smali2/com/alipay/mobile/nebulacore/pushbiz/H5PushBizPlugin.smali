.class public Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5PushBizPlugin.java"


# static fields
.field public static final pushBizAppId:Ljava/lang/String; = "20001111"

.field public static pushBizWindowAction:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "NEBULANOTIFY_bizWindowCompleted"

    sput-object v0, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;->pushBizWindowAction:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 34
    const-string v0, "pushBizWindow"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;->a:Ljava/lang/String;

    .line 36
    const-string v0, "h5_bizWindowUrlConfig"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 17
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 50
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v3, "type"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 52
    .local v4, "type":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-object/from16 v6, p1

    invoke-interface {v2, v6, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 54
    return v5

    .line 56
    :cond_0
    move-object/from16 v6, p1

    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    move-object v7, v3

    .line 58
    .local v7, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v7, v0

    if-eqz v0, :cond_6

    .line 59
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;->b:Ljava/lang/String;

    invoke-interface {v7, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v8, v3

    .line 61
    .local v8, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v8, v0

    if-eqz v0, :cond_6

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 62
    invoke-static {v8, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v3

    .line 63
    .local v9, "url":Ljava/lang/String;
    move-object v9, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 64
    const-string v0, "?"

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 65
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 67
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v10, "data"

    invoke-static {v0, v10, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v10, v3

    .line 68
    .local v10, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v10, v0

    const-string v11, "H5PushBizPlugin"

    if-eqz v0, :cond_2

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v12, v3

    .line 70
    .local v12, "keys":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v0, v3

    .line 71
    .local v13, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 73
    :try_start_0
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 75
    .local v14, "value":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v5

    .end local v0    # "key":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    goto :goto_1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 82
    .end local v12    # "keys":Ljava/util/Set;
    .end local v13    # "it":Ljava/util/Iterator;
    :cond_2
    move-object v0, v3

    :cond_3
    const/4 v5, 0x0

    .line 83
    .local v5, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    const-string v12, ""

    .line 85
    .local v12, "appId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v13

    instance-of v13, v13, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v13, :cond_4

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 87
    move-object v5, v13

    invoke-interface {v13}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "appId"

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 90
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 91
    .local v0, "context":Landroid/content/Context;
    invoke-static {v13}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v13

    .line 92
    .local v13, "manager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v14, "filter":Landroid/content/IntentFilter;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    if-eqz v5, :cond_5

    .line 96
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v3, "NEBULANOTIFY_bizWindowCompleted_"

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;->pushBizWindowAction:Ljava/lang/String;

    .line 98
    invoke-virtual {v14, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5PushBizWindowReceiver;

    invoke-direct {v3, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5PushBizWindowReceiver;-><init>(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 101
    .local v3, "h5PushBizReceiver":Lcom/alipay/mobile/nebulacore/plugin/H5PushBizWindowReceiver;
    invoke-virtual {v13, v3, v14}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 103
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    .end local v0    # "context":Landroid/content/Context;
    .local v16, "context":Landroid/content/Context;
    const-string v0, "pushBizWindowAction is "

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;->pushBizWindowAction:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "param":Landroid/os/Bundle;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "appId="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 107
    const-string v11, "url"

    invoke-virtual {v0, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizUtil;->setH5BridgeContext(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 111
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v11

    .line 112
    const-string v15, "20001111"

    const/4 v1, 0x0

    invoke-interface {v11, v1, v15, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 94
    .end local v3    # "h5PushBizReceiver":Lcom/alipay/mobile/nebulacore/plugin/H5PushBizWindowReceiver;
    .end local v16    # "context":Landroid/content/Context;
    .local v0, "context":Landroid/content/Context;
    :cond_5
    move-object/from16 v16, v0

    .line 116
    .end local v0    # "context":Landroid/content/Context;
    .restart local v16    # "context":Landroid/content/Context;
    :goto_2
    const/4 v1, 0x1

    return v1

    .line 121
    .end local v5    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v8    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "url":Ljava/lang/String;
    .end local v10    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "appId":Ljava/lang/String;
    .end local v13    # "manager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .end local v14    # "filter":Landroid/content/IntentFilter;
    .end local v16    # "context":Landroid/content/Context;
    :cond_6
    const/16 v0, 0xc

    const-string v1, "not found config"

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 124
    const/4 v1, 0x1

    return v1

    .line 126
    .end local v4    # "type":Ljava/lang/String;
    .end local v7    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_7
    move-object/from16 v6, p1

    invoke-super/range {p0 .. p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    return v0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 44
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 46
    return-void
.end method

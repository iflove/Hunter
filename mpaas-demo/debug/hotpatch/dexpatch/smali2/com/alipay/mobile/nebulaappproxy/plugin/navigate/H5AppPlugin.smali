.class public Lcom/alipay/mobile/nebulaappproxy/plugin/navigate/H5AppPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5AppPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    .line 205
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 206
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 207
    const-string v1, "h5_exitAppDefaultType"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 208
    .local v2, "value":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    return-object v2

    .line 212
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    const-string v1, "exitTop"

    return-object v1
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 29
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "&"

    const-string/jumbo v4, "sourcePackageName"

    const-string v5, "isOriginStartFromExternal"

    const-string v6, "H5AppPlugin"

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v8

    .line 60
    .local v9, "callParam":Lcom/alibaba/fastjson/JSONObject;
    move-object v9, v7

    const-string v10, "appId"

    invoke-static {v7, v10, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, "targetAppId":Ljava/lang/String;
    const-string v10, "closeSelfWindow"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v10

    .line 62
    .local v10, "closeSelfWindow":Z
    const-string/jumbo v12, "scheme"

    invoke-static {v9, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 63
    .local v15, "scheme":Ljava/lang/String;
    const-string/jumbo v12, "startAnimation"

    invoke-static {v9, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 66
    .local v14, "startAnimation":Ljava/lang/String;
    new-instance v12, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v12}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v13, v8

    .line 67
    .local v13, "error":Lcom/alibaba/fastjson/JSONObject;
    move-object v13, v12

    const-string v11, "error"

    const-string v8, "2"

    invoke-virtual {v12, v11, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "invalid app id "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "message"

    invoke-virtual {v13, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-interface {v3, v13}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 71
    return-void

    .line 74
    :cond_0
    const-string/jumbo v8, "param"

    const/4 v11, 0x0

    invoke-static {v9, v8, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 75
    .local v8, "params":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v11, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->toBundle(Landroid/os/Bundle;Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v18, v11

    .line 76
    .local v18, "startParams":Landroid/os/Bundle;
    const/4 v11, 0x0

    invoke-static {v12, v11}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v12

    .line 77
    .end local v18    # "startParams":Landroid/os/Bundle;
    .local v12, "startParams":Landroid/os/Bundle;
    move-object/from16 v18, v8

    .end local v8    # "params":Lcom/alibaba/fastjson/JSONObject;
    .local v18, "params":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v11, "closeCurrentApp"

    invoke-static {v9, v11, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 79
    .local v8, "closeCurrentApp":Z
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 80
    const-string/jumbo v11, "nebulaStartAnimation"

    if-eqz v8, :cond_2

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v19

    const/16 v17, 0x0

    move-object/from16 v20, v17

    .line 83
    .local v20, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object/from16 v20, v19

    if-eqz v19, :cond_1

    .line 84
    move-object/from16 v19, v9

    .end local v9    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    .local v19, "callParam":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface/range {v20 .. v20}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v11, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v19    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v9    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    move-object/from16 v19, v9

    .end local v9    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v19    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_0

    .line 80
    .end local v19    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    .end local v20    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v9    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    move-object/from16 v19, v9

    .line 87
    .end local v9    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v19    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    invoke-virtual {v12, v11, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    .end local v19    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v9    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    move-object/from16 v19, v9

    .line 94
    .end local v9    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    .restart local v19    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    const/4 v9, 0x0

    .line 95
    .local v9, "runningAppId":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v11

    .line 96
    invoke-virtual {v11}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v11

    invoke-interface {v11}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v11
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_a

    if-eqz v11, :cond_4

    .line 97
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v11

    .line 98
    invoke-virtual {v11}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v11

    invoke-interface {v11}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    goto :goto_2

    .line 198
    .end local v9    # "runningAppId":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    goto/16 :goto_b

    .line 101
    .restart local v9    # "runningAppId":Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v8, :cond_7

    .line 102
    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 103
    const/4 v11, 0x0

    invoke-direct {v1, v2, v3, v11}, Lcom/alipay/mobile/nebulaappproxy/plugin/navigate/H5AppPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;I)V

    goto :goto_3

    .line 105
    :cond_5
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 107
    const-string/jumbo v11, "setActivityPresentFinish delay 0"

    invoke-static {v6, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v11, 0x0

    invoke-direct {v1, v2, v3, v11}, Lcom/alipay/mobile/nebulaappproxy/plugin/navigate/H5AppPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;I)V

    goto :goto_3

    .line 110
    :cond_6
    const/16 v11, 0xc8

    invoke-direct {v1, v2, v3, v11}, Lcom/alipay/mobile/nebulaappproxy/plugin/navigate/H5AppPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;I)V
    :try_end_1
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    :cond_7
    :goto_3
    :try_start_2
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_2
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_2 .. :try_end_2} :catch_a

    if-nez v11, :cond_a

    .line 117
    :try_start_3
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    const/4 v4, 0x0

    move-object v5, v4

    .line 118
    .local v5, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    move-object v5, v0

    if-eqz v0, :cond_9

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "extParam":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v11

    .line 121
    .local v4, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v4, v11

    if-eqz v11, :cond_8

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 122
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    move-object v0, v11

    .line 124
    :cond_8
    invoke-interface {v5, v15, v0}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_3
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_3 .. :try_end_3} :catch_0

    .line 127
    .end local v0    # "extParam":Landroid/os/Bundle;
    .end local v4    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v5    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    :cond_9
    move-object/from16 v21, v9

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    goto/16 :goto_9

    .line 128
    :cond_a
    :try_start_4
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v11, "sceneParam":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v20

    .line 132
    .restart local v20    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-virtual {v12, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v12, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_4 .. :try_end_4} :catch_a

    .line 134
    const-string v2, ""

    if-eqz v20, :cond_b

    :try_start_5
    invoke-interface/range {v20 .. v20}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v21

    if-eqz v21, :cond_b

    .line 135
    invoke-interface/range {v20 .. v20}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v21, v9

    const/4 v9, 0x0

    .end local v9    # "runningAppId":Ljava/lang/String;
    .local v21, "runningAppId":Ljava/lang/String;
    invoke-static {v3, v5, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    .line 136
    .local v3, "isOriginStartFrom":Z
    invoke-virtual {v11, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    invoke-interface/range {v20 .. v20}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "sourcePkgName":Ljava/lang/String;
    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 134
    .end local v3    # "isOriginStartFrom":Z
    .end local v5    # "sourcePkgName":Ljava/lang/String;
    .end local v21    # "runningAppId":Ljava/lang/String;
    .restart local v9    # "runningAppId":Ljava/lang/String;
    :cond_b
    move-object/from16 v21, v9

    .line 141
    .end local v9    # "runningAppId":Ljava/lang/String;
    .restart local v21    # "runningAppId":Ljava/lang/String;
    const/4 v5, 0x0

    :goto_4
    :try_start_6
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    move-object v4, v5

    .line 142
    .local v4, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v4, v3

    if-eqz v3, :cond_11

    .line 143
    const-string v3, "h5_startAppCensorEnable"

    invoke-interface {v4, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 145
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    const/4 v9, 0x0

    .line 146
    .local v9, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    move-object v9, v5

    if-eqz v5, :cond_f

    .line 147
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-interface {v9, v7}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->isOuterSchemeNeedVerify(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 148
    const-string v5, "isOuterSchemeNeedVerify result true"

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    move-object v5, v12

    .line 150
    .local v5, "finalStartParams":Landroid/os/Bundle;
    move-object/from16 v17, v0

    .line 151
    .local v17, "query":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v22
    :try_end_6
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_6 .. :try_end_6} :catch_a

    .line 152
    .local v22, "keyset":Ljava/util/Set;
    const/16 v23, 0x0

    .line 154
    .local v23, "uri":Landroid/net/Uri;
    move-object/from16 v24, v3

    .end local v3    # "value":Ljava/lang/String;
    .local v24, "value":Ljava/lang/String;
    :try_start_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_7 .. :try_end_7} :catch_6

    move-object/from16 v3, v17

    .end local v17    # "query":Ljava/lang/String;
    .local v3, "query":Ljava/lang/String;
    :goto_5
    :try_start_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_8 .. :try_end_8} :catch_6

    move-object/from16 v26, v17

    .line 155
    .local v26, "key":Ljava/lang/String;
    move-object/from16 v27, v4

    move-object/from16 v4, v26

    .end local v26    # "key":Ljava/lang/String;
    .local v4, "key":Ljava/lang/String;
    .local v27, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :try_start_9
    invoke-virtual {v12, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_9 .. :try_end_9} :catch_6

    .line 156
    .local v17, "object":Ljava/lang/Object;
    move-object/from16 v26, v11

    .end local v11    # "sceneParam":Landroid/os/Bundle;
    .local v26, "sceneParam":Landroid/os/Bundle;
    :try_start_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_a .. :try_end_a} :catch_6

    move-object/from16 v28, v12

    .end local v12    # "startParams":Landroid/os/Bundle;
    .local v28, "startParams":Landroid/os/Bundle;
    :try_start_b
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 157
    .end local v4    # "key":Ljava/lang/String;
    .end local v17    # "object":Ljava/lang/Object;
    move-object/from16 v11, v26

    move-object/from16 v4, v27

    move-object/from16 v12, v28

    goto :goto_5

    .line 162
    .end local v28    # "startParams":Landroid/os/Bundle;
    .restart local v12    # "startParams":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move-object/from16 v28, v12

    move-object/from16 v17, v3

    .end local v12    # "startParams":Landroid/os/Bundle;
    .restart local v28    # "startParams":Landroid/os/Bundle;
    goto/16 :goto_6

    .end local v26    # "sceneParam":Landroid/os/Bundle;
    .end local v28    # "startParams":Landroid/os/Bundle;
    .restart local v11    # "sceneParam":Landroid/os/Bundle;
    .restart local v12    # "startParams":Landroid/os/Bundle;
    :catch_2
    move-exception v0

    move-object/from16 v26, v11

    move-object/from16 v28, v12

    move-object/from16 v17, v3

    .end local v11    # "sceneParam":Landroid/os/Bundle;
    .end local v12    # "startParams":Landroid/os/Bundle;
    .restart local v26    # "sceneParam":Landroid/os/Bundle;
    .restart local v28    # "startParams":Landroid/os/Bundle;
    goto/16 :goto_6

    .line 158
    .end local v26    # "sceneParam":Landroid/os/Bundle;
    .end local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v28    # "startParams":Landroid/os/Bundle;
    .local v4, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v11    # "sceneParam":Landroid/os/Bundle;
    .restart local v12    # "startParams":Landroid/os/Bundle;
    :cond_c
    move-object/from16 v27, v4

    move-object/from16 v26, v11

    move-object/from16 v28, v12

    .end local v4    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v11    # "sceneParam":Landroid/os/Bundle;
    .end local v12    # "startParams":Landroid/os/Bundle;
    .restart local v26    # "sceneParam":Landroid/os/Bundle;
    .restart local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v28    # "startParams":Landroid/os/Bundle;
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 159
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 161
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "alipays://platformapi/startapp?appId="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_b .. :try_end_b} :catch_3

    move-object/from16 v23, v0

    .line 166
    move-object/from16 v17, v3

    move-object v4, v13

    move-object/from16 v25, v14

    move-object/from16 v0, v23

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    move-object/from16 v26, v15

    goto :goto_7

    .line 198
    .end local v3    # "query":Ljava/lang/String;
    .end local v5    # "finalStartParams":Landroid/os/Bundle;
    .end local v9    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .end local v20    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v21    # "runningAppId":Ljava/lang/String;
    .end local v22    # "keyset":Ljava/util/Set;
    .end local v23    # "uri":Landroid/net/Uri;
    .end local v24    # "value":Ljava/lang/String;
    .end local v26    # "sceneParam":Landroid/os/Bundle;
    .end local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :catch_3
    move-exception v0

    move-object v4, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    move-object/from16 v3, v28

    goto/16 :goto_b

    .line 162
    .restart local v3    # "query":Ljava/lang/String;
    .restart local v5    # "finalStartParams":Landroid/os/Bundle;
    .restart local v9    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .restart local v20    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v21    # "runningAppId":Ljava/lang/String;
    .restart local v22    # "keyset":Ljava/util/Set;
    .restart local v23    # "uri":Landroid/net/Uri;
    .restart local v24    # "value":Ljava/lang/String;
    .restart local v26    # "sceneParam":Landroid/os/Bundle;
    .restart local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :catch_4
    move-exception v0

    move-object/from16 v17, v3

    goto :goto_6

    .end local v26    # "sceneParam":Landroid/os/Bundle;
    .end local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v28    # "startParams":Landroid/os/Bundle;
    .restart local v4    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v11    # "sceneParam":Landroid/os/Bundle;
    .restart local v12    # "startParams":Landroid/os/Bundle;
    :catch_5
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v26, v11

    move-object/from16 v28, v12

    move-object/from16 v17, v3

    .end local v4    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v11    # "sceneParam":Landroid/os/Bundle;
    .end local v12    # "startParams":Landroid/os/Bundle;
    .restart local v26    # "sceneParam":Landroid/os/Bundle;
    .restart local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v28    # "startParams":Landroid/os/Bundle;
    goto :goto_6

    .line 198
    .end local v3    # "query":Ljava/lang/String;
    .end local v5    # "finalStartParams":Landroid/os/Bundle;
    .end local v9    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .end local v20    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v21    # "runningAppId":Ljava/lang/String;
    .end local v22    # "keyset":Ljava/util/Set;
    .end local v23    # "uri":Landroid/net/Uri;
    .end local v24    # "value":Ljava/lang/String;
    .end local v26    # "sceneParam":Landroid/os/Bundle;
    .end local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v28    # "startParams":Landroid/os/Bundle;
    .restart local v12    # "startParams":Landroid/os/Bundle;
    :catch_6
    move-exception v0

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    .end local v12    # "startParams":Landroid/os/Bundle;
    .restart local v28    # "startParams":Landroid/os/Bundle;
    goto/16 :goto_b

    .line 162
    .end local v28    # "startParams":Landroid/os/Bundle;
    .restart local v4    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v5    # "finalStartParams":Landroid/os/Bundle;
    .restart local v9    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .restart local v11    # "sceneParam":Landroid/os/Bundle;
    .restart local v12    # "startParams":Landroid/os/Bundle;
    .local v17, "query":Ljava/lang/String;
    .restart local v20    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v21    # "runningAppId":Ljava/lang/String;
    .restart local v22    # "keyset":Ljava/util/Set;
    .restart local v23    # "uri":Landroid/net/Uri;
    .restart local v24    # "value":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v26, v11

    move-object/from16 v28, v12

    .line 163
    .end local v4    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v11    # "sceneParam":Landroid/os/Bundle;
    .end local v12    # "startParams":Landroid/os/Bundle;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v26    # "sceneParam":Landroid/os/Bundle;
    .restart local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v28    # "startParams":Landroid/os/Bundle;
    :goto_6
    :try_start_c
    invoke-static {v6, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v11
    :try_end_c
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_c .. :try_end_c} :catch_8

    const/4 v12, 0x0

    const/16 v16, 0x0

    .line 165
    move-object/from16 v2, v26

    .end local v26    # "sceneParam":Landroid/os/Bundle;
    .local v2, "sceneParam":Landroid/os/Bundle;
    move-object/from16 v3, v28

    .end local v28    # "startParams":Landroid/os/Bundle;
    .local v3, "startParams":Landroid/os/Bundle;
    move-object v4, v13

    .end local v13    # "error":Lcom/alibaba/fastjson/JSONObject;
    .local v4, "error":Lcom/alibaba/fastjson/JSONObject;
    move-object v13, v7

    move-object/from16 v25, v14

    .end local v14    # "startAnimation":Ljava/lang/String;
    .local v25, "startAnimation":Ljava/lang/String;
    move-object v14, v5

    move-object/from16 v26, v15

    .end local v15    # "scheme":Ljava/lang/String;
    .local v26, "scheme":Ljava/lang/String;
    move-object v15, v2

    :try_start_d
    invoke-interface/range {v11 .. v16}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    move-object/from16 v0, v23

    .line 167
    .end local v23    # "uri":Landroid/net/Uri;
    .local v0, "uri":Landroid/net/Uri;
    :goto_7
    new-instance v11, Lcom/alipay/mobile/nebulaappproxy/plugin/navigate/H5AppPlugin$1;

    invoke-direct {v11, v1, v7, v5, v2}, Lcom/alipay/mobile/nebulaappproxy/plugin/navigate/H5AppPlugin$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/navigate/H5AppPlugin;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    const/4 v12, 0x1

    invoke-interface {v9, v0, v11, v12}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->verifyOuterScheme(Landroid/net/Uri;Lcom/alipay/mobile/nebula/provider/H5EnvProvider$H5schemeVerifyCallback;I)V

    .line 175
    return-void

    .line 198
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v2    # "sceneParam":Landroid/os/Bundle;
    .end local v3    # "startParams":Landroid/os/Bundle;
    .end local v4    # "error":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "finalStartParams":Landroid/os/Bundle;
    .end local v9    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .end local v17    # "query":Ljava/lang/String;
    .end local v20    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v21    # "runningAppId":Ljava/lang/String;
    .end local v22    # "keyset":Ljava/util/Set;
    .end local v24    # "value":Ljava/lang/String;
    .end local v25    # "startAnimation":Ljava/lang/String;
    .end local v26    # "scheme":Ljava/lang/String;
    .end local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v13    # "error":Lcom/alibaba/fastjson/JSONObject;
    .restart local v14    # "startAnimation":Ljava/lang/String;
    .restart local v15    # "scheme":Ljava/lang/String;
    .restart local v28    # "startParams":Landroid/os/Bundle;
    :catch_8
    move-exception v0

    move-object v4, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    move-object/from16 v3, v28

    .end local v13    # "error":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "startAnimation":Ljava/lang/String;
    .end local v15    # "scheme":Ljava/lang/String;
    .end local v28    # "startParams":Landroid/os/Bundle;
    .restart local v3    # "startParams":Landroid/os/Bundle;
    .restart local v4    # "error":Lcom/alibaba/fastjson/JSONObject;
    .restart local v25    # "startAnimation":Ljava/lang/String;
    .restart local v26    # "scheme":Ljava/lang/String;
    goto/16 :goto_b

    .line 147
    .end local v25    # "startAnimation":Ljava/lang/String;
    .end local v26    # "scheme":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    .local v4, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v9    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .restart local v11    # "sceneParam":Landroid/os/Bundle;
    .restart local v12    # "startParams":Landroid/os/Bundle;
    .restart local v13    # "error":Lcom/alibaba/fastjson/JSONObject;
    .restart local v14    # "startAnimation":Ljava/lang/String;
    .restart local v15    # "scheme":Ljava/lang/String;
    .restart local v20    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v21    # "runningAppId":Ljava/lang/String;
    :cond_e
    move-object/from16 v24, v3

    move-object/from16 v27, v4

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    .end local v11    # "sceneParam":Landroid/os/Bundle;
    .end local v12    # "startParams":Landroid/os/Bundle;
    .end local v13    # "error":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "startAnimation":Ljava/lang/String;
    .end local v15    # "scheme":Ljava/lang/String;
    .restart local v2    # "sceneParam":Landroid/os/Bundle;
    .local v3, "startParams":Landroid/os/Bundle;
    .local v4, "error":Lcom/alibaba/fastjson/JSONObject;
    .restart local v24    # "value":Ljava/lang/String;
    .restart local v25    # "startAnimation":Ljava/lang/String;
    .restart local v26    # "scheme":Ljava/lang/String;
    .restart local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    goto :goto_8

    .line 146
    .end local v2    # "sceneParam":Landroid/os/Bundle;
    .end local v24    # "value":Ljava/lang/String;
    .end local v25    # "startAnimation":Ljava/lang/String;
    .end local v26    # "scheme":Ljava/lang/String;
    .end local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v3, "value":Ljava/lang/String;
    .local v4, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v11    # "sceneParam":Landroid/os/Bundle;
    .restart local v12    # "startParams":Landroid/os/Bundle;
    .restart local v13    # "error":Lcom/alibaba/fastjson/JSONObject;
    .restart local v14    # "startAnimation":Ljava/lang/String;
    .restart local v15    # "scheme":Ljava/lang/String;
    :cond_f
    move-object/from16 v24, v3

    move-object/from16 v27, v4

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    .end local v11    # "sceneParam":Landroid/os/Bundle;
    .end local v12    # "startParams":Landroid/os/Bundle;
    .end local v13    # "error":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "startAnimation":Ljava/lang/String;
    .end local v15    # "scheme":Ljava/lang/String;
    .restart local v2    # "sceneParam":Landroid/os/Bundle;
    .local v3, "startParams":Landroid/os/Bundle;
    .local v4, "error":Lcom/alibaba/fastjson/JSONObject;
    .restart local v24    # "value":Ljava/lang/String;
    .restart local v25    # "startAnimation":Ljava/lang/String;
    .restart local v26    # "scheme":Ljava/lang/String;
    .restart local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    goto :goto_8

    .line 144
    .end local v2    # "sceneParam":Landroid/os/Bundle;
    .end local v9    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .end local v24    # "value":Ljava/lang/String;
    .end local v25    # "startAnimation":Ljava/lang/String;
    .end local v26    # "scheme":Ljava/lang/String;
    .end local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v3, "value":Ljava/lang/String;
    .local v4, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v11    # "sceneParam":Landroid/os/Bundle;
    .restart local v12    # "startParams":Landroid/os/Bundle;
    .restart local v13    # "error":Lcom/alibaba/fastjson/JSONObject;
    .restart local v14    # "startAnimation":Ljava/lang/String;
    .restart local v15    # "scheme":Ljava/lang/String;
    :cond_10
    move-object/from16 v24, v3

    move-object/from16 v27, v4

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    .end local v11    # "sceneParam":Landroid/os/Bundle;
    .end local v12    # "startParams":Landroid/os/Bundle;
    .end local v13    # "error":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "startAnimation":Ljava/lang/String;
    .end local v15    # "scheme":Ljava/lang/String;
    .restart local v2    # "sceneParam":Landroid/os/Bundle;
    .local v3, "startParams":Landroid/os/Bundle;
    .local v4, "error":Lcom/alibaba/fastjson/JSONObject;
    .restart local v24    # "value":Ljava/lang/String;
    .restart local v25    # "startAnimation":Ljava/lang/String;
    .restart local v26    # "scheme":Ljava/lang/String;
    .restart local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    goto :goto_8

    .line 142
    .end local v2    # "sceneParam":Landroid/os/Bundle;
    .end local v3    # "startParams":Landroid/os/Bundle;
    .end local v24    # "value":Ljava/lang/String;
    .end local v25    # "startAnimation":Ljava/lang/String;
    .end local v26    # "scheme":Ljava/lang/String;
    .end local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v4, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v11    # "sceneParam":Landroid/os/Bundle;
    .restart local v12    # "startParams":Landroid/os/Bundle;
    .restart local v13    # "error":Lcom/alibaba/fastjson/JSONObject;
    .restart local v14    # "startAnimation":Ljava/lang/String;
    .restart local v15    # "scheme":Ljava/lang/String;
    :cond_11
    move-object/from16 v27, v4

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    .line 180
    .end local v11    # "sceneParam":Landroid/os/Bundle;
    .end local v12    # "startParams":Landroid/os/Bundle;
    .end local v13    # "error":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "startAnimation":Ljava/lang/String;
    .end local v15    # "scheme":Ljava/lang/String;
    .restart local v2    # "sceneParam":Landroid/os/Bundle;
    .restart local v3    # "startParams":Landroid/os/Bundle;
    .local v4, "error":Lcom/alibaba/fastjson/JSONObject;
    .restart local v25    # "startAnimation":Ljava/lang/String;
    .restart local v26    # "scheme":Ljava/lang/String;
    .restart local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :goto_8
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v16, 0x0

    .line 181
    move-object v13, v7

    move-object v14, v3

    move-object v15, v2

    invoke-interface/range {v11 .. v16}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    move-object v5, v2

    .line 185
    .end local v2    # "sceneParam":Landroid/os/Bundle;
    .end local v20    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v27    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :goto_9
    if-nez v8, :cond_14

    if-eqz v10, :cond_14

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;

    if-eqz v0, :cond_13

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    move-object v2, v5

    .line 188
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v0

    if-eqz v0, :cond_12

    .line 189
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 191
    .end local v2    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_12
    return-void

    .line 192
    :cond_13
    const-string/jumbo v0, "not in H5BaseActivity"

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_a

    .line 198
    .end local v21    # "runningAppId":Ljava/lang/String;
    :catch_9
    move-exception v0

    goto :goto_b

    .line 200
    :cond_14
    :goto_a
    return-void

    .line 198
    .end local v3    # "startParams":Landroid/os/Bundle;
    .end local v4    # "error":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "startAnimation":Ljava/lang/String;
    .end local v26    # "scheme":Ljava/lang/String;
    .restart local v12    # "startParams":Landroid/os/Bundle;
    .restart local v13    # "error":Lcom/alibaba/fastjson/JSONObject;
    .restart local v14    # "startAnimation":Ljava/lang/String;
    .restart local v15    # "scheme":Ljava/lang/String;
    :catch_a
    move-exception v0

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    .line 199
    .end local v12    # "startParams":Landroid/os/Bundle;
    .end local v13    # "error":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "startAnimation":Ljava/lang/String;
    .end local v15    # "scheme":Ljava/lang/String;
    .local v0, "e":Lcom/alipay/mobile/framework/app/AppLoadException;
    .restart local v3    # "startParams":Landroid/os/Bundle;
    .restart local v4    # "error":Lcom/alibaba/fastjson/JSONObject;
    .restart local v25    # "startAnimation":Ljava/lang/String;
    .restart local v26    # "scheme":Ljava/lang/String;
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startApp [targetAppId] "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed!"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    .end local v0    # "e":Lcom/alipay/mobile/framework/app/AppLoadException;
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;I)V
    .locals 18
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p3, "delay"    # I

    .line 216
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    .line 217
    instance-of v0, v0, Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    .line 218
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v10, v9, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 219
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    .line 224
    .local v0, "appId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/navigate/H5AppPlugin;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "closeActionType"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 225
    .local v12, "closeActionType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "animated"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v13

    .line 227
    .local v13, "animated":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closeActionType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5AppPlugin"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 231
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_0

    .line 230
    :cond_1
    move-object v14, v0

    .line 235
    .end local v0    # "appId":Ljava/lang/String;
    .local v14, "appId":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "findTopRunningApp appId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "20000001"

    invoke-static {v14, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 258
    :cond_2
    const/4 v0, 0x1

    .line 259
    .local v0, "closeCurrentApp":Z
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 260
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v15, v1

    .end local v3    # "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v15, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_3

    .line 261
    const-string v1, "h5_exitCurrentApp"

    invoke-interface {v15, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v2, "exitCurrentApp":Ljava/lang/String;
    move-object v2, v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 263
    const-string v1, "YES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 267
    .end local v2    # "exitCurrentApp":Ljava/lang/String;
    :cond_3
    move v8, v0

    .line 270
    .local v8, "onlyCloseCurrentApp":Z
    if-eqz v11, :cond_4

    .line 271
    move-object v7, v14

    .line 272
    .local v7, "finalAppId":Ljava/lang/String;
    new-instance v6, Lcom/alipay/mobile/nebulaappproxy/plugin/navigate/H5AppPlugin$2;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v12

    move-object/from16 v4, p1

    move v5, v13

    move/from16 v16, v0

    move-object v0, v6

    .end local v0    # "closeCurrentApp":Z
    .local v16, "closeCurrentApp":Z
    move-object/from16 v6, p2

    move/from16 v17, v8

    .end local v8    # "onlyCloseCurrentApp":Z
    .local v17, "onlyCloseCurrentApp":Z
    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/nebulaappproxy/plugin/navigate/H5AppPlugin$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/navigate/H5AppPlugin;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;ZLcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Z)V

    int-to-long v1, v11

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 282
    .end local v7    # "finalAppId":Ljava/lang/String;
    goto/16 :goto_2

    .line 283
    .end local v16    # "closeCurrentApp":Z
    .end local v17    # "onlyCloseCurrentApp":Z
    .restart local v0    # "closeCurrentApp":Z
    .restart local v8    # "onlyCloseCurrentApp":Z
    :cond_4
    move/from16 v16, v0

    move/from16 v17, v8

    .end local v0    # "closeCurrentApp":Z
    .end local v8    # "onlyCloseCurrentApp":Z
    .restart local v16    # "closeCurrentApp":Z
    .restart local v17    # "onlyCloseCurrentApp":Z
    const-string v0, "exitSelf"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 284
    invoke-static {v9, v13, v10}, Lcom/alipay/mobile/nebulaappproxy/plugin/navigate/H5AppPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_2

    .line 287
    :cond_5
    move/from16 v0, v17

    .end local v17    # "onlyCloseCurrentApp":Z
    .local v0, "onlyCloseCurrentApp":Z
    invoke-static {v14, v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/navigate/H5AppPlugin;->b(Ljava/lang/String;Z)V

    goto :goto_2

    .line 238
    .end local v0    # "onlyCloseCurrentApp":Z
    .end local v15    # "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v16    # "closeCurrentApp":Z
    :cond_6
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 240
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 241
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 243
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 244
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 246
    .local v1, "topActivity":Landroid/app/Activity;
    :try_start_0
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "className":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "className:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v3, "H5Activity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "H5TransActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 249
    :cond_7
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_8

    .line 250
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v0    # "className":Ljava/lang/String;
    :cond_8
    goto :goto_2

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "topActivity":Landroid/app/Activity;
    :cond_9
    :goto_2
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 292
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/h5container/api/H5Event;ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p0, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "x2"    # Z
    .param p2, "x3"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 29
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/navigate/H5AppPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x1"    # Ljava/lang/String;
    .param p1, "x2"    # Z

    .line 29
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/navigate/H5AppPlugin;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method private static b(Lcom/alipay/mobile/h5container/api/H5Event;ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 5
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "animated"    # Z
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 296
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 297
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exitSelfApp "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5AppPlugin"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    if-nez p1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    const/4 v2, 0x0

    .line 300
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 301
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const/4 v3, 0x0

    const-string/jumbo v4, "nebula_showActivityFinishAnimation"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    .end local v2    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 306
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 308
    :cond_1
    return-void
.end method

.method private static b(Ljava/lang/String;Z)V
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "closeCurrentApp"    # Z

    .line 311
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 313
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 314
    invoke-interface {v1, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    move-object v2, v0

    .line 315
    .local v2, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v2, v1

    const-string v3, "H5AppPlugin"

    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finishApp "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 319
    :cond_0
    const-string v0, "finishApp app is null "

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .end local v2    # "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    return-void

    .line 323
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 324
    invoke-interface {v1, p0, p0, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 326
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 49
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "startApp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/navigate/H5AppPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_0

    .line 52
    :cond_0
    const-string v1, "exitApp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/navigate/H5AppPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;I)V

    .line 55
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 43
    const-string/jumbo v0, "startApp"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 44
    const-string v0, "exitApp"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 45
    return-void
.end method

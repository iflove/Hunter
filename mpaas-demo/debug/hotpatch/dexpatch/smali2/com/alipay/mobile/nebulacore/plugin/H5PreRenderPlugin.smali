.class public Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5PreRenderPlugin.java"


# static fields
.field public static final KEY_PRE_RANDER_MAX:Ljava/lang/String; = "H5_preRenderMax"


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

.field private b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;)V
    .locals 1
    .param p1, "h5Session"    # Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->b:Ljava/lang/Boolean;

    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 47
    return-void
.end method

.method private static a()I
    .locals 5

    .line 271
    const/4 v0, 0x0

    .local v0, "preRanderMax":Ljava/lang/String;
    const-string v1, "H5_preRenderMax"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    move-object v0, v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    .line 274
    return v2

    .line 276
    :cond_0
    :try_start_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 277
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    return v1

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, "globalException":Ljava/lang/Exception;
    const-string v3, "H5PreRenderPlugin"

    const-string v4, "exception detail."

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    .end local v1    # "globalException":Ljava/lang/Exception;
    return v2
.end method

.method private declared-synchronized a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 20
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 109
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 110
    .local v5, "target":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    move-object v5, v3

    instance-of v3, v3, Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v3, :cond_0

    .line 111
    const-string v3, "H5PreRenderPlugin"

    const-string v4, "invalid target!"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 115
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v3

    .line 116
    .local v3, "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    move-object v6, v5

    check-cast v6, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 118
    .local v6, "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    move-object v8, v4

    .line 119
    .local v8, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v8, v7

    const-string v9, "windowParams"

    invoke-static {v7, v9, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 120
    .local v7, "windowParams":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, "currentUrl":Ljava/lang/String;
    const-string v10, "kickOut"

    const-string v11, "first"

    invoke-static {v8, v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 124
    .local v10, "kickOut":Ljava/lang/String;
    if-eqz v7, :cond_16

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    goto/16 :goto_4

    .line 143
    :cond_1
    const-string v12, "url"

    invoke-static {v7, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 145
    .local v12, "url":Ljava/lang/String;
    const-string v13, "param"

    invoke-static {v7, v13, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v13

    .line 147
    .local v13, "param":Lcom/alibaba/fastjson/JSONObject;
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    move-object v15, v4

    .line 148
    .local v15, "oldParams":Landroid/os/Bundle;
    move-object v15, v14

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v14, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 151
    const-string v11, "preRpc"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 152
    const-string v11, "H5PreRenderPlugin"

    const-string v14, "in H5SessionPlugin delete preRpc startparam"

    invoke-static {v11, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v11, "preRpc"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 157
    :cond_2
    const-string v11, "navSearchBar_type"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 158
    const-string v11, "navSearchBar_type"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 161
    :cond_3
    const-string v11, "backgroundColor"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 162
    const-string v11, "backgroundColor"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 166
    :cond_4
    const-string v11, "transparentTitle"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 167
    const-string v11, "H5PreRenderPlugin"

    const-string v14, "in H5SessionPlugin delete transparentTitle startparam"

    invoke-static {v11, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v11, "transparentTitle"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 171
    :cond_5
    const-string v11, "transparentTitleTextAuto"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 172
    const-string v11, "H5PreRenderPlugin"

    const-string v14, "in H5SessionPlugin delete transparentTitleTextAuto startparam"

    invoke-static {v11, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v11, "transparentTitleTextAuto"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 177
    :cond_6
    const-string v11, "titleImage"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 178
    const-string v11, "H5PreRenderPlugin"

    const-string v14, "in H5SessionPlugin delete titleImage startparam"

    invoke-static {v11, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v11, "titleImage"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 182
    :cond_7
    const-string v11, "bounceTopColor"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 183
    const-string v11, "bounceTopColor"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 187
    :cond_8
    const-string v11, "fragmentType"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 188
    const-string v11, "H5PreRenderPlugin"

    const-string v14, "in H5SessionPlugin delete fragmentType startparam"

    invoke-static {v11, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v11, "fragmentType"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 192
    :cond_9
    const-string v11, "createPageSence"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 193
    const-string v11, "H5PreRenderPlugin"

    const-string v14, "in H5SessionPlugin delete createPageSence startparam"

    invoke-static {v11, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v11, "createPageSence"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 197
    :cond_a
    const-string v11, "pullRefreshStyle"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 198
    const-string v11, "H5PreRenderPlugin"

    const-string v14, "in H5SessionPlugin delete pullRefreshStyle startparam"

    invoke-static {v11, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v11, "pullRefreshStyle"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 202
    :cond_b
    const-string v11, "closeAllWindow"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 203
    const-string v11, "closeAllWindow"

    invoke-virtual {v15, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 206
    :cond_c
    const/4 v11, 0x0

    if-eqz v13, :cond_e

    invoke-virtual {v13}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_e

    .line 207
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v16, v4

    .line 208
    .local v16, "newParams":Landroid/os/Bundle;
    move-object/from16 v17, v14

    .end local v16    # "newParams":Landroid/os/Bundle;
    .local v17, "newParams":Landroid/os/Bundle;
    invoke-static {v14, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->toBundle(Landroid/os/Bundle;Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;

    .line 209
    move-object/from16 v14, v17

    .end local v17    # "newParams":Landroid/os/Bundle;
    .local v14, "newParams":Landroid/os/Bundle;
    invoke-static {v14, v11}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v16

    .line 210
    move-object/from16 v14, v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 212
    .local v4, "keySet":Ljava/util/Set;
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v18, v17

    .line 213
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v11, v18

    .end local v18    # "key":Ljava/lang/String;
    .local v11, "key":Ljava/lang/String;
    invoke-static {v15, v11}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->remove(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 214
    .end local v11    # "key":Ljava/lang/String;
    const/4 v11, 0x0

    goto :goto_0

    .line 215
    :cond_d
    invoke-virtual {v15, v14}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    move-object v11, v4

    move-object v4, v14

    goto :goto_1

    .line 218
    .end local v4    # "keySet":Ljava/util/Set;
    .end local v14    # "newParams":Landroid/os/Bundle;
    :cond_e
    move-object v11, v4

    move-object/from16 v16, v11

    :goto_1
    const-string v14, "showFavorites"

    move-object/from16 v18, v5

    .end local v5    # "target":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    .local v18, "target":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->b:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v15, v14, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getParams()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v9, v12, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAbsoluteUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 221
    .end local v12    # "url":Ljava/lang/String;
    .local v5, "url":Ljava/lang/String;
    const-string v12, "H5PreRenderPlugin"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v7

    .end local v7    # "windowParams":Lcom/alibaba/fastjson/JSONObject;
    .local v19, "windowParams":Lcom/alibaba/fastjson/JSONObject;
    const-string v7, "pushWindow url "

    invoke-direct {v14, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v7, "url"

    invoke-virtual {v15, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v7, "Referer"

    invoke-virtual {v15, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v7, "isPrerender"

    const/4 v12, 0x1

    invoke-virtual {v15, v7, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    const-string v7, "launchParamsTag"

    invoke-static {v8, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 226
    .local v4, "launchParamsTag":Ljava/lang/String;
    move-object v4, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 227
    const-string v7, "appId"

    invoke-static {v15, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    .line 229
    .local v11, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v7

    invoke-virtual {v7, v11, v4}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getH5StartParam(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    move-object/from16 v12, v16

    .line 230
    .local v12, "launcher":Landroid/os/Bundle;
    move-object v12, v7

    if-eqz v7, :cond_f

    invoke-virtual {v12}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f

    .line 231
    const-string v7, "H5PreRenderPlugin"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v4

    .end local v4    # "launchParamsTag":Ljava/lang/String;
    .local v16, "launchParamsTag":Ljava/lang/String;
    const-string v4, "launcher "

    invoke-direct {v14, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v15, v12}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_2

    .line 230
    .end local v16    # "launchParamsTag":Ljava/lang/String;
    .restart local v4    # "launchParamsTag":Ljava/lang/String;
    :cond_f
    move-object/from16 v16, v4

    .end local v4    # "launchParamsTag":Ljava/lang/String;
    .restart local v16    # "launchParamsTag":Ljava/lang/String;
    goto :goto_2

    .line 226
    .end local v11    # "appId":Ljava/lang/String;
    .end local v12    # "launcher":Landroid/os/Bundle;
    .end local v16    # "launchParamsTag":Ljava/lang/String;
    .restart local v4    # "launchParamsTag":Ljava/lang/String;
    :cond_10
    move-object/from16 v16, v4

    .line 236
    .end local v4    # "launchParamsTag":Ljava/lang/String;
    .restart local v16    # "launchParamsTag":Ljava/lang/String;
    :goto_2
    const-string v4, "H5PreRenderPlugin"

    invoke-static {v15, v4}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parseMagicOptions(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 238
    const/4 v4, 0x0

    invoke-static {v15, v4}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 239
    if-eqz v6, :cond_15

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v4

    .line 240
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_11

    goto/16 :goto_3

    .line 244
    :cond_11
    const-string v4, "fromType"

    const-string v7, "pushWindow"

    invoke-virtual {v15, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v4

    if-eqz v4, :cond_13

    .line 246
    const/4 v4, 0x0

    invoke-virtual {v3, v15, v4}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->containsPoolKey(Landroid/os/Bundle;I)Z

    move-result v7

    if-nez v7, :cond_13

    .line 247
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v4

    invoke-static {}, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->a()I

    move-result v7

    if-lt v4, v7, :cond_13

    .line 249
    const-string v4, "none"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 250
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v7, v11

    .line 251
    .local v7, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v4

    const-string v11, "urls"

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getUrls()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v4, "success"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v4, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-interface {v2, v7}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    .line 256
    .end local v7    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_12
    :try_start_2
    invoke-static {v0, v10}, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)V

    .line 258
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v4, :cond_14

    .line 259
    const-string v4, "H5PreRenderPlugin"

    const-string v7, "##h5prerender## add prerender by jsapi"

    invoke-static {v4, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 261
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v4

    .line 262
    .local v11, "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    const/4 v7, 0x0

    invoke-virtual {v4, v15, v7}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addPreFragment(Landroid/os/Bundle;I)V

    .line 264
    .end local v11    # "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    :cond_14
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v7, v11

    .line 265
    .restart local v7    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v4

    const-string v11, "urls"

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getUrls()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v4, "success"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v4, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-interface {v2, v7}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    .line 241
    .end local v7    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_15
    :goto_3
    monitor-exit p0

    return-void

    .line 124
    .end local v13    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v15    # "oldParams":Landroid/os/Bundle;
    .end local v16    # "launchParamsTag":Ljava/lang/String;
    .end local v18    # "target":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    .end local v19    # "windowParams":Lcom/alibaba/fastjson/JSONObject;
    .local v5, "target":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    .local v7, "windowParams":Lcom/alibaba/fastjson/JSONObject;
    :cond_16
    move-object/from16 v18, v5

    move-object/from16 v19, v7

    .line 125
    .end local v5    # "target":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    .end local v7    # "windowParams":Lcom/alibaba/fastjson/JSONObject;
    .restart local v18    # "target":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    .restart local v19    # "windowParams":Lcom/alibaba/fastjson/JSONObject;
    :goto_4
    :try_start_3
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 126
    .local v4, "result":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v5

    if-nez v5, :cond_17

    .line 127
    const-string v5, "error"

    const-string v7, "2"

    invoke-virtual {v4, v5, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v5, "message"

    .line 129
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v11, Lcom/alipay/mobile/nebula/R$string;->h5_wrongparam:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 128
    invoke-virtual {v4, v5, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-interface {v2, v4}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 133
    :cond_17
    :try_start_4
    const-string v5, "none"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_18

    .line 134
    monitor-exit p0

    return-void

    .line 136
    :cond_18
    :try_start_5
    invoke-static {v0, v10}, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)V

    .line 137
    const-string v5, "urls"

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getUrls()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v5, "success"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-interface {v2, v4}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 108
    .end local v3    # "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    .end local v4    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .end local v8    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "currentUrl":Ljava/lang/String;
    .end local v10    # "kickOut":Ljava/lang/String;
    .end local v18    # "target":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    .end local v19    # "windowParams":Lcom/alibaba/fastjson/JSONObject;
    .end local p1    # "event":Lcom/alipay/mobile/h5container/api/H5Event;
    .end local p2    # "context":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)V
    .locals 4
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "kickOut"    # Ljava/lang/String;

    .line 286
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v0

    const/4 v1, 0x0

    .line 287
    .local v1, "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 288
    return-void

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 292
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v0

    .line 293
    .local v0, "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    const-string v2, "last"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 295
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 294
    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->clearPreFragment(II)V

    return-void

    .line 298
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->clearPreFragment(II)V

    .line 301
    .end local v0    # "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    :cond_2
    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Event;Z)V
    .locals 2
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "open"    # Z

    .line 102
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openPreRenderByPlugin:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PreRenderPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->openPreRenderByPlugin(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method private static b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 11
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 305
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "range"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v1, v2

    .line 306
    .local v1, "rangeParam":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v3, "location"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 307
    .local v0, "location":I
    const-string v3, "length"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v3

    .line 309
    .local v3, "length":I
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v5

    move-object v6, v2

    .line 310
    .local v6, "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    move-object v6, v5

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v5

    const-string v7, "success"

    if-nez v5, :cond_0

    .line 311
    const-string v2, "false"

    invoke-interface {p1, v7, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 312
    return-void

    .line 315
    :cond_0
    const-string v5, "message"

    const-string v8, "2"

    const-string v9, "error"

    if-ltz v0, :cond_6

    if-gez v3, :cond_1

    goto/16 :goto_0

    .line 323
    :cond_1
    if-le v0, v3, :cond_2

    .line 324
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 325
    .local v2, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v4

    invoke-virtual {v4, v9, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/alipay/mobile/nebula/R$string;->h5_wrongparam:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-interface {p1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 328
    return-void

    .line 331
    .end local v2    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v10

    sub-int/2addr v10, v4

    if-le v0, v10, :cond_3

    .line 332
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 333
    .restart local v2    # "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v4

    invoke-virtual {v4, v9, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/alipay/mobile/nebula/R$string;->h5_wrongparam:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-interface {p1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 336
    return-void

    .line 339
    .end local v2    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v5

    sub-int/2addr v5, v4

    if-le v3, v5, :cond_4

    .line 340
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 343
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v5

    instance-of v5, v5, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v5, :cond_5

    .line 344
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 345
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v5

    .line 346
    .local v2, "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    invoke-virtual {v5, v0, v3}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->clearPreFragment(II)V

    .line 348
    .end local v2    # "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    :cond_5
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 349
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v5

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getUrls()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    const-string v9, "urls"

    invoke-virtual {v5, v9, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-interface {p1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 352
    return-void

    .line 316
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    :goto_0
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 317
    .local v2, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v4

    invoke-virtual {v4, v9, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/alipay/mobile/nebula/R$string;->h5_wrongparam:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-interface {p1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 320
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 81
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    const-string v1, "preRender"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "H5PreRenderPlugin"

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 83
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Z)V

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 85
    const-string v1, "pre_render"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_0
    const-string v1, "clearRender"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Z)V

    .line 88
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 89
    const-string v1, "clear_render"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    goto :goto_0

    .line 91
    :cond_1
    const-string v1, "finishRender"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 98
    :cond_2
    :goto_0
    return v3
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 70
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "action":Ljava/lang/String;
    const-string v1, "showFavorites"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 72
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 73
    :cond_0
    const-string v1, "hideFavorites"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->b:Ljava/lang/Boolean;

    .line 76
    :cond_1
    :goto_0
    return v2
.end method

.method public onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 0
    .param p1, "coreNode"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 65
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    .line 66
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 56
    const-string v0, "preRender"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v0, "clearRender"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v0, "finishRender"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v0, "showFavorites"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v0, "hideFavorites"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->a:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 52
    return-void
.end method

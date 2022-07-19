.class public Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5PermissionUtil;
.super Ljava/lang/Object;
.source "H5PermissionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToInfo(Ljava/lang/String;[B)Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .line 28
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v2, v0

    .line 29
    .local v2, "data":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->getInstance()Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;

    move-result-object v1

    invoke-virtual {v1, p0, v2}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->modifyApiPermission(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 34
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5PermissionUtil;->jsonToInfo(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 38
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "data":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "H5PermissionUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static doSomeInitJob()V
    .locals 3

    .line 198
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;->a()Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    return-void

    .line 199
    :catchall_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jsonToInfo...e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5PermissionUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static jsonToInfo(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;
    .locals 21
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v1, p1

    const-string v0, "HttpLink_SubResMimeList"

    const-string v2, "Valid_SubResMimeList"

    const-string/jumbo v3, "validDomain"

    const-string v4, "EVENT_List"

    const-string v5, "JSAPI_List"

    const-string v6, "Enable_Proxy"

    .line 45
    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5PermissionUtil;->doSomeInitJob()V

    .line 47
    if-eqz v1, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_19

    .line 48
    new-instance v8, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;

    invoke-direct {v8}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;-><init>()V

    .line 50
    .local v8, "h5ApiPermissionInfo":Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;
    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    .local v9, "enableProxy":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v8, v6, v9}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->setApiLevelStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    nop

    .line 55
    invoke-static {v1, v5, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    move-object v10, v7

    .line 57
    .local v10, "JSAPI_List":Lcom/alibaba/fastjson/JSONArray;
    move-object v10, v6

    if-eqz v6, :cond_2

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 58
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v6, "list":Ljava/util/List;
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v12, v7

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 60
    .local v12, "api":Ljava/lang/Object;
    move-object v12, v13

    instance-of v13, v13, Ljava/lang/String;

    if-eqz v13, :cond_0

    .line 61
    move-object v13, v12

    check-cast v13, Ljava/lang/String;

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v9    # "enableProxy":Ljava/lang/String;
    .end local v12    # "api":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 64
    :cond_1
    nop

    .line 65
    invoke-virtual {v8, v5, v6}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->setApiLevelList(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 69
    .end local v6    # "list":Ljava/util/List;
    :cond_2
    move-object v6, v7

    move-object v11, v6

    move-object v12, v11

    :goto_1
    nop

    .line 70
    invoke-static {v1, v4, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 72
    .local v6, "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    move-object v6, v5

    if-eqz v5, :cond_5

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 73
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v5

    .line 74
    .local v11, "list":Ljava/util/List;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v5, v7

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 75
    .local v5, "event":Ljava/lang/Object;
    move-object v5, v13

    instance-of v13, v13, Ljava/lang/String;

    if-eqz v13, :cond_3

    .line 76
    move-object v13, v5

    check-cast v13, Ljava/lang/String;

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v5    # "event":Ljava/lang/Object;
    :cond_3
    goto :goto_2

    .line 79
    :cond_4
    nop

    .line 80
    invoke-virtual {v8, v4, v11}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->setApiLevelList(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 84
    .end local v11    # "list":Ljava/util/List;
    :cond_5
    move-object v5, v7

    :goto_3
    nop

    .line 85
    invoke-static {v1, v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 86
    .local v11, "validDomain":Lcom/alibaba/fastjson/JSONArray;
    move-object v11, v4

    if-eqz v4, :cond_8

    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 87
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v4

    .line 88
    .local v12, "list":Ljava/util/List;
    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v7

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 89
    .local v4, "domain":Ljava/lang/Object;
    move-object v4, v13

    instance-of v13, v13, Ljava/lang/String;

    if-eqz v13, :cond_6

    .line 90
    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v4    # "domain":Ljava/lang/Object;
    :cond_6
    goto :goto_4

    .line 93
    :cond_7
    nop

    .line 94
    invoke-virtual {v8, v3, v12}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->setApiLevelList(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_5

    .line 98
    .end local v12    # "list":Ljava/util/List;
    :cond_8
    move-object v4, v7

    :goto_5
    const-string v3, "JSAPI_SP_Config"

    .line 99
    invoke-static {v1, v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 100
    .local v12, "sp_config":Lcom/alibaba/fastjson/JSONObject;
    move-object v12, v3

    if-eqz v3, :cond_f

    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 101
    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v7

    move-object v13, v3

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 102
    .local v4, "key":Ljava/lang/String;
    invoke-static {v12, v4, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v17

    .line 103
    .local v3, "value":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v3, v17

    if-eqz v17, :cond_d

    .line 104
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v13, "subParamList":Ljava/util/List;
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "JSAPI_SP_Config_"

    if-eqz v17, :cond_c

    :try_start_2
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v18, v17

    .line 107
    .local v18, "paramKey":Ljava/lang/String;
    move-object/from16 v17, v5

    move-object/from16 v5, v18

    .end local v18    # "paramKey":Ljava/lang/String;
    .local v5, "paramKey":Ljava/lang/String;
    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    move-object/from16 v18, v6

    const/4 v6, 0x0

    .end local v6    # "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    .local v18, "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    invoke-static {v3, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v19

    move-object v6, v15

    .line 110
    .local v6, "paramValue":Lcom/alibaba/fastjson/JSONArray;
    move-object/from16 v15, v19

    .end local v6    # "paramValue":Lcom/alibaba/fastjson/JSONArray;
    .local v15, "paramValue":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v19, :cond_b

    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 111
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v6, "list":Ljava/util/List;
    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v20, v3

    .end local v3    # "value":Lcom/alibaba/fastjson/JSONObject;
    .local v20, "value":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 113
    .local v16, "paramRegex":Ljava/lang/Object;
    move-object/from16 v16, v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 114
    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v16    # "paramRegex":Ljava/lang/Object;
    :cond_9
    move-object/from16 v3, v20

    goto :goto_8

    .line 117
    .end local v20    # "value":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "value":Lcom/alibaba/fastjson/JSONObject;
    :cond_a
    move-object/from16 v20, v3

    .end local v3    # "value":Lcom/alibaba/fastjson/JSONObject;
    .restart local v20    # "value":Lcom/alibaba/fastjson/JSONObject;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-virtual {v8, v3, v6}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->setApiLevelList(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_9

    .line 110
    .end local v6    # "list":Ljava/util/List;
    .end local v20    # "value":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "value":Lcom/alibaba/fastjson/JSONObject;
    :cond_b
    move-object/from16 v20, v3

    .line 123
    .end local v3    # "value":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "paramKey":Ljava/lang/String;
    .end local v15    # "paramValue":Lcom/alibaba/fastjson/JSONArray;
    .restart local v20    # "value":Lcom/alibaba/fastjson/JSONObject;
    :goto_9
    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v3, v20

    const/4 v7, 0x0

    goto :goto_7

    .line 124
    .end local v18    # "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    .end local v20    # "value":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "value":Lcom/alibaba/fastjson/JSONObject;
    .local v6, "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    :cond_c
    move-object/from16 v20, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v3    # "value":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    .restart local v18    # "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    .restart local v20    # "value":Lcom/alibaba/fastjson/JSONObject;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3, v13}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->setApiLevelList(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_a

    .line 103
    .end local v13    # "subParamList":Ljava/util/List;
    .end local v18    # "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    .end local v20    # "value":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "value":Lcom/alibaba/fastjson/JSONObject;
    .restart local v6    # "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    :cond_d
    move-object/from16 v20, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 127
    .end local v3    # "value":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    .restart local v18    # "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    :goto_a
    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v3, v20

    const/4 v7, 0x0

    goto/16 :goto_6

    .line 101
    .end local v18    # "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    .restart local v6    # "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    :cond_e
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v6    # "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    .restart local v18    # "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    goto :goto_b

    .line 100
    .end local v18    # "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    .restart local v6    # "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    :cond_f
    move-object/from16 v18, v6

    .line 131
    .end local v6    # "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    .restart local v18    # "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_b
    nop

    .line 132
    const/4 v6, 0x0

    invoke-static {v1, v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    .line 134
    .local v5, "alid_SubResMimeList":Lcom/alibaba/fastjson/JSONArray;
    move-object v5, v7

    if-eqz v7, :cond_12

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_12

    .line 135
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v3

    .line 136
    .local v4, "list":Ljava/util/List;
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v13

    .line 137
    .local v7, "mimeRegex":Ljava/lang/Object;
    move-object v13, v6

    .end local v7    # "mimeRegex":Ljava/lang/Object;
    .local v13, "mimeRegex":Ljava/lang/Object;
    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_10

    .line 138
    move-object v6, v13

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v13    # "mimeRegex":Ljava/lang/Object;
    :cond_10
    goto :goto_c

    .line 141
    :cond_11
    nop

    .line 142
    invoke-virtual {v8, v2, v4}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->setApiLevelList(Ljava/lang/String;Ljava/util/List;)V

    .line 145
    .end local v4    # "list":Ljava/util/List;
    :cond_12
    nop

    .line 146
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    move-object v2, v4

    .line 148
    .local v2, "http":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v6

    if-eqz v6, :cond_15

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    .line 149
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v3, "list":Ljava/util/List;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v14

    .line 151
    .local v6, "mimeRegex":Ljava/lang/Object;
    move-object v14, v4

    .end local v6    # "mimeRegex":Ljava/lang/Object;
    .local v14, "mimeRegex":Ljava/lang/Object;
    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_13

    .line 152
    move-object v4, v14

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v14    # "mimeRegex":Ljava/lang/Object;
    :cond_13
    goto :goto_d

    .line 155
    :cond_14
    nop

    .line 156
    invoke-virtual {v8, v0, v3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->setApiLevelList(Ljava/lang/String;Ljava/util/List;)V

    .line 160
    .end local v3    # "list":Ljava/util/List;
    :cond_15
    const-string v0, "Webview_Config"

    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 161
    .local v3, "webview_Config":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 162
    const-string v0, "allowedDomain"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    move-object v4, v13

    .line 163
    .local v4, "webview_Config_domain_List":Lcom/alibaba/fastjson/JSONArray;
    move-object v4, v0

    if-eqz v0, :cond_18

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "domainList":Ljava/util/List;
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v13, v15

    .line 166
    .local v13, "domain":Ljava/lang/Object;
    move-object v15, v7

    .end local v13    # "domain":Ljava/lang/Object;
    .local v15, "domain":Ljava/lang/Object;
    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_16

    .line 167
    move-object v7, v15

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v15    # "domain":Ljava/lang/Object;
    :cond_16
    goto :goto_e

    .line 170
    :cond_17
    const-string v6, "Webview_Config_allowedDomain"

    invoke-virtual {v8, v6, v0}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->setApiLevelList(Ljava/lang/String;Ljava/util/List;)V

    .line 176
    .end local v0    # "domainList":Ljava/util/List;
    .end local v4    # "webview_Config_domain_List":Lcom/alibaba/fastjson/JSONArray;
    :cond_18
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->setHasPermissionFile(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 178
    return-object v8

    .line 180
    .end local v2    # "http":Lcom/alibaba/fastjson/JSONArray;
    .end local v3    # "webview_Config":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "alid_SubResMimeList":Lcom/alibaba/fastjson/JSONArray;
    .end local v8    # "h5ApiPermissionInfo":Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;
    .end local v10    # "JSAPI_List":Lcom/alibaba/fastjson/JSONArray;
    .end local v11    # "validDomain":Lcom/alibaba/fastjson/JSONArray;
    .end local v12    # "sp_config":Lcom/alibaba/fastjson/JSONObject;
    .end local v18    # "EVENT_List":Lcom/alibaba/fastjson/JSONArray;
    :catch_0
    move-exception v0

    goto :goto_f

    .line 189
    :cond_19
    move-object/from16 v3, p0

    goto :goto_10

    .line 180
    :catch_1
    move-exception v0

    const/4 v9, 0x0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    :goto_f
    const-string v2, "H5PermissionUtil"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-object v3, v9

    .line 184
    .local v3, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    move-object v10, v2

    .end local v3    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .local v10, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v2, :cond_1a

    .line 185
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "^error="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 185
    const-string v11, "H5_PERMISSION_FILE_PARSE_FAIL"

    const-string v16, "H-EM"

    invoke-interface/range {v10 .. v16}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->logV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 184
    :cond_1a
    move-object/from16 v3, p0

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    :goto_10
    const/4 v2, 0x0

    return-object v2
.end method

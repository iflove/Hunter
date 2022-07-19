.class public Lcom/alipay/mobile/h5plugin/H5LocationPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5LocationPlugin.java"


# static fields
.field public static final CHOOSE_LOCATION:Ljava/lang/String; = "chooseLocation"

.field public static final GET_CURRENT_LOCATION:Ljava/lang/String; = "getCurrentLocation"

.field public static final GET_LOCATION:Ljava/lang/String; = "getLocation"

.field public static final GET_LOCATION_WITH_ADDRESS_NAME:Ljava/lang/String; = "geoCode"

.field public static final GET_REGEO_WITH_LATLON:Ljava/lang/String; = "reGeoCode"

.field public static final OPEN_LOCATION:Ljava/lang/String; = "openLocation"

.field public static final PREFETCH_LOCATION:Ljava/lang/String; = "prefetchLocation"

.field public static final START_CONTINUOUS_LOCATION:Ljava/lang/String; = "startContinuousLocation"

.field public static final START_INDOOR_LOCATION:Ljava/lang/String; = "startIndoorLocation"

.field public static final STOP_CONTINUOUS_LOCATION:Ljava/lang/String; = "stopContinuousLocation"

.field public static final STOP_INDOOR_LOCATION:Ljava/lang/String; = "stopIndoorLocation"

.field public static final TAG:Ljava/lang/String; = "H5LocationPlugin"


# instance fields
.field private locationWrapper:Lcom/alipay/mobile/mpaasadapter/LocationWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private chooseLocation(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 97
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/mpaas/tinyapi/RequestModel;

    sget-object v2, Lcom/mpaas/tinyapi/RequestType;->CHOOSE_LOCATION:Lcom/mpaas/tinyapi/RequestType;

    invoke-direct {v1, v2}, Lcom/mpaas/tinyapi/RequestModel;-><init>(Lcom/mpaas/tinyapi/RequestType;)V

    new-instance v2, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$1;

    invoke-direct {v2, p0, p2}, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$1;-><init>(Lcom/alipay/mobile/h5plugin/H5LocationPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-static {v0, v1, v2}, Lcom/mpaas/tinyapi/ApiExecutor;->a(Landroid/content/Context;Lcom/mpaas/tinyapi/RequestModel;Lcom/mpaas/tinyapi/ResponseCallback;)V

    .line 121
    return-void
.end method

.method private getLocation(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;J)V
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p3, "startTime"    # J

    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "H5LocationPlugin"

    const-string v2, "getLocation"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v2

    instance-of v2, v2, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 129
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/h5plugin/H5LocationPlugin;->judgeGrant(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 131
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin;->locationWrapper:Lcom/alipay/mobile/mpaasadapter/LocationWrapper;

    .line 132
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "requestType"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v2

    .line 133
    .local v2, "requestType":I
    iget-object v3, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin;->locationWrapper:Lcom/alipay/mobile/mpaasadapter/LocationWrapper;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->setRequestType(I)V

    .line 134
    iget-object v3, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin;->locationWrapper:Lcom/alipay/mobile/mpaasadapter/LocationWrapper;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    const-string v6, "isHighAccuracy"

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->setHighAccuracy(Z)V

    .line 135
    iget-object v3, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin;->locationWrapper:Lcom/alipay/mobile/mpaasadapter/LocationWrapper;

    new-instance v4, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;

    invoke-direct {v4, p0, v2, v1, p2}, Lcom/alipay/mobile/h5plugin/H5LocationPlugin$2;-><init>(Lcom/alipay/mobile/h5plugin/H5LocationPlugin;ILandroid/content/Context;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->setLocationChangeListener(Lcom/alipay/mobile/mpaasadapter/LocationWrapper$OnLocationChangeListener;)V

    .line 204
    iget-object v3, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin;->locationWrapper:Lcom/alipay/mobile/mpaasadapter/LocationWrapper;

    invoke-virtual {v3}, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->startLocation()V

    .line 205
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "requestType":I
    return-void

    .line 206
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "getLocation, no grant auth"

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method private judgeGrant(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 5
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 266
    if-nez p1, :cond_0

    .line 267
    const/4 v0, 0x0

    return v0

    .line 269
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/h5plugin/LocationUtil;->checkPermissions(Landroid/content/Context;)Z

    move-result v0

    .line 270
    .local v0, "isGrant":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "location grant:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5LocationPlugin"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    if-nez v0, :cond_1

    .line 272
    const-string/jumbo v1, "no grant location."

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 274
    .local v2, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "error"

    invoke-virtual {v1, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v1, "errorMessage"

    const-string/jumbo v3, "\u8bf7\u786e\u8ba4\u5b9a\u4f4d\u76f8\u5173\u6743\u9650\u5df2\u5f00\u542f"

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    if-eqz p2, :cond_1

    .line 277
    invoke-interface {p2, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 280
    .end local v2    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    return v0
.end method

.method private openLocation(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 22
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-object/from16 v1, p2

    const-string v0, "hidden"

    const-string/jumbo v2, "scale"

    const-string/jumbo v3, "name"

    const-string v4, "address"

    const-string v5, "errorMessage"

    const-string v6, "error"

    const-string v7, ""

    const-string v8, "longitude"

    const-string v9, "latitude"

    .line 211
    const-string v10, "H5LocationPlugin"

    const-string/jumbo v11, "openLocation"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    if-nez p1, :cond_0

    .line 213
    const-string/jumbo v0, "openLocation event == null"

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void

    .line 218
    :cond_0
    const/4 v12, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-object v14, v12

    .line 219
    .local v14, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v14, v13

    if-nez v13, :cond_1

    .line 220
    :try_start_1
    const-string/jumbo v0, "openLocation param == null"

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 221
    return-void

    .line 254
    .end local v14    # "param":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 223
    .restart local v14    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    :try_start_2
    invoke-virtual {v14, v9}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 224
    .local v13, "latObject":Ljava/lang/Object;
    :try_start_3
    invoke-virtual {v14, v8}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 226
    .local v15, "lonObject":Ljava/lang/Object;
    invoke-static {v14, v4, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 227
    .local v17, "address":Ljava/lang/String;
    invoke-static {v14, v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object/from16 v18, v16

    .line 229
    .local v18, "name":Ljava/lang/String;
    if-eqz v13, :cond_4

    if-eqz v15, :cond_4

    :try_start_4
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v21, v13

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    goto :goto_1

    .line 239
    :cond_2
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v19, v12

    .line 240
    .local v19, "intent":Landroid/content/Intent;
    move-object/from16 v20, v11

    .end local v19    # "intent":Landroid/content/Intent;
    .local v20, "intent":Landroid/content/Intent;
    move-object/from16 v21, v13

    .end local v13    # "latObject":Ljava/lang/Object;
    .local v21, "latObject":Ljava/lang/Object;
    :try_start_5
    invoke-virtual {v14, v9}, Lcom/alibaba/fastjson/JSONObject;->getDoubleValue(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v11, v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 241
    invoke-virtual {v14, v8}, Lcom/alibaba/fastjson/JSONObject;->getDoubleValue(Ljava/lang/String;)D

    move-result-wide v11

    move-object/from16 v9, v20

    .end local v20    # "intent":Landroid/content/Intent;
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9, v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 242
    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/JSONObject;->getDoubleValue(Ljava/lang/String;)D

    move-result-wide v11

    invoke-virtual {v9, v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 243
    move-object/from16 v2, v18

    .end local v18    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v9, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    move-object/from16 v3, v17

    .end local v17    # "address":Ljava/lang/String;
    .local v3, "address":Ljava/lang/String;
    invoke-virtual {v9, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    invoke-static {v14, v0, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/h5plugin/H5MapActivity;

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v4, 0x0

    .line 250
    .local v4, "launchContext":Landroid/content/Context;
    move-object v4, v0

    if-eqz v0, :cond_3

    .line 251
    invoke-virtual {v4, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 253
    .end local v21    # "latObject":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v0, "success"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v1, v0, v7}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 262
    nop

    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "launchContext":Landroid/content/Context;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v14    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v15    # "lonObject":Ljava/lang/Object;
    return-void

    .line 254
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object/from16 v21, v13

    :goto_0
    move-object/from16 v12, v21

    goto :goto_3

    .line 229
    .restart local v14    # "param":Lcom/alibaba/fastjson/JSONObject;
    .restart local v15    # "lonObject":Ljava/lang/Object;
    .restart local v17    # "address":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    :cond_4
    move-object/from16 v21, v13

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    .line 230
    .end local v17    # "address":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "address":Ljava/lang/String;
    :goto_1
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "latObject="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v4, v21

    .local v4, "latObject":Ljava/lang/Object;
    :try_start_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",lonObject="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",address="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",name="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v7, 0x0

    .line 232
    .local v7, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v0

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string/jumbo v0, "\u7f3a\u5c11\u5fc5\u8981\u53c2\u6570(\u7ecf\u7eac\u5ea6\uff0c\u4f4d\u7f6e\u540d\u79f0\u548c\u4f4d\u7f6e\u63cf\u8ff0)"

    invoke-virtual {v7, v5, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    if-eqz v1, :cond_5

    .line 235
    invoke-interface {v1, v7}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 237
    .end local v4    # "latObject":Ljava/lang/Object;
    :cond_5
    return-void

    .line 254
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "address":Ljava/lang/String;
    .end local v7    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v15    # "lonObject":Ljava/lang/Object;
    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object/from16 v4, v21

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v4, v13

    :goto_2
    move-object v12, v4

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v7, v12

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const-string/jumbo v2, "openLocation exception."

    invoke-static {v10, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v3, v12

    .line 257
    .local v3, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string/jumbo v2, "\u7cfb\u7edf\u5f02\u5e38"

    invoke-virtual {v3, v5, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    if-eqz v1, :cond_6

    .line 260
    invoke-interface {v1, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 77
    if-nez p1, :cond_0

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "H5LocationPlugin"

    const-string v2, "event == null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 84
    .local v1, "startTime":J
    const-string v3, "getLocation"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/alipay/mobile/h5plugin/H5LocationPlugin;->getLocation(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;J)V

    goto :goto_0

    .line 86
    :cond_1
    const-string v3, "getCurrentLocation"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/alipay/mobile/h5plugin/H5LocationPlugin;->getLocation(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;J)V

    goto :goto_0

    .line 88
    :cond_2
    const-string/jumbo v3, "openLocation"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/h5plugin/H5LocationPlugin;->openLocation(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_0

    .line 90
    :cond_3
    const-string v3, "beehiveGetPOI"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/h5plugin/H5LocationPlugin;->chooseLocation(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 93
    :cond_4
    :goto_0
    const/4 v3, 0x1

    return v3
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 59
    const-string v0, "getLocation"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v0, "getCurrentLocation"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v0, "prefetchLocation"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v0, "openLocation"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v0, "chooseLocation"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v0, "startIndoorLocation"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v0, "stopIndoorLocation"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v0, "startContinuousLocation"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v0, "stopContinuousLocation"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, "reGeoCode"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v0, "geoCode"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v0, "beehiveGetPOI"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin;->locationWrapper:Lcom/alipay/mobile/mpaasadapter/LocationWrapper;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/alipay/mobile/mpaasadapter/LocationWrapper;->stopLocation()V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/h5plugin/H5LocationPlugin;->locationWrapper:Lcom/alipay/mobile/mpaasadapter/LocationWrapper;

    .line 289
    :cond_0
    return-void
.end method

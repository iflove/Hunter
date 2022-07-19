.class public Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;
.super Ljava/lang/Object;
.source "H5SyncRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static d:J


# instance fields
.field private a:Z

.field private b:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "syncMessage"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;->a:Z

    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;->c:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/alipay/mobile/h5container/service/H5AppCenterService;)V
    .locals 17
    .param p0, "syncData"    # Ljava/lang/String;
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "listForceSync"    # Ljava/util/List;
    .param p3, "app_sync_log"    # Ljava/lang/String;
    .param p4, "h5AppCenterService"    # Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppRes;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/h5container/service/H5AppCenterService;",
            ")V"
        }
    .end annotation

    .line 169
    move-object/from16 v0, p1

    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 170
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    const-string/jumbo v4, "syncType"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "syncType":Ljava/lang/String;
    const-string/jumbo v4, "syncInfo"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    move-object v5, v2

    .line 172
    .local v5, "syncInfo":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v4

    const-string/jumbo v6, "timeStamp"

    const-wide/16 v7, 0x0

    invoke-static {v4, v6, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getLong(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;J)J

    move-result-wide v9

    .line 173
    .local v9, "timeStamp":J
    const-string v4, "APP_SYNC"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    const-string v11, "app"

    if-eqz v4, :cond_4

    .line 174
    new-instance v4, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    invoke-direct {v4}, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;-><init>()V

    .line 176
    .local v4, "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->setConfig(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebula/appcenter/model/AppRes;)V

    .line 178
    invoke-static {v5, v11, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 179
    .local v2, "dataList":Lcom/alibaba/fastjson/JSONObject;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    .line 180
    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->toAppInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v11

    .line 181
    .local v11, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    cmp-long v12, v9, v7

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;->a()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 182
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v11, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->syncTime:Ljava/lang/String;

    .line 184
    :cond_0
    if-eqz v11, :cond_2

    iget-object v7, v11, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 185
    iget-object v7, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v7, "list":Ljava/util/List;
    iget-object v8, v11, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 190
    iget-object v8, v11, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 191
    move-object v7, v8

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v8, v11, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v8, v11, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 195
    :cond_1
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v8, v11, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .end local v7    # "list":Ljava/util/List;
    :cond_2
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v7, "appIdList":Ljava/util/List;
    iget-object v8, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object/from16 v12, p3

    .end local p3    # "app_sync_log":Ljava/lang/String;
    .local v12, "app_sync_log":Ljava/lang/String;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 204
    .local v13, "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    iget-object v14, v11, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v13, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v13, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 206
    .end local v13    # "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_1

    .line 208
    :cond_3
    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->setNebulaAppCallback(ILjava/util/List;)V

    .line 210
    .end local v2    # "dataList":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .end local v7    # "appIdList":Ljava/util/List;
    .end local v11    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    return-void

    .end local v12    # "app_sync_log":Ljava/lang/String;
    .restart local p3    # "app_sync_log":Ljava/lang/String;
    :cond_4
    const-string v4, "CLIENT_SYNC"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 211
    const-string v4, "clientConfig"

    invoke-static {v5, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    move-object v7, v2

    .line 212
    .local v7, "clientConfig":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v4

    if-eqz v4, :cond_5

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 214
    new-instance v4, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    invoke-direct {v4}, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;-><init>()V

    move-object v8, v2

    .line 215
    .local v8, "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    move-object v8, v4

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    iput-object v11, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    .line 218
    move-object/from16 v4, p4

    invoke-virtual {v4, v8, v6}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;Z)V

    .line 220
    const-string v6, "H5_APP_BIZ_SYNC"

    invoke-static {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    .line 221
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v11, "monitor"

    invoke-virtual {v6, v11, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 222
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string/jumbo v6, "step"

    const-string v11, "config"

    invoke-virtual {v2, v6, v11}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2, v6, v11}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v6, "list"

    invoke-virtual {v2, v6, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 220
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto :goto_2

    .line 212
    .end local v8    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    :cond_5
    move-object/from16 v4, p4

    .line 226
    .end local v7    # "clientConfig":Lcom/alibaba/fastjson/JSONObject;
    :goto_2
    return-void

    :cond_6
    move-object/from16 v4, p4

    const-string v6, "FORCE_SYNC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "H5SyncUtil"

    if-eqz v6, :cond_8

    .line 227
    const-class v6, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 228
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v6

    if-eqz v6, :cond_7

    .line 229
    const-string v6, "h5_FORCE_SYNC"

    invoke-interface {v2, v6}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "no"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 230
    return-void

    .line 235
    :cond_7
    const-string v6, "add force sync to list"

    invoke-static {v7, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    move-object/from16 v6, p2

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    return-void

    :cond_8
    move-object/from16 v6, p2

    const-string v8, "Request"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 239
    const-string v8, "expire"

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long v11, v11, v13

    .line 240
    .local v2, "time":J
    move-wide v13, v11

    .end local v2    # "time":J
    .local v13, "time":J
    sget-wide v15, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;->d:J

    cmp-long v2, v11, v15

    if-lez v2, :cond_9

    move-wide v15, v13

    :cond_9
    sput-wide v15, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;->d:J

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "expireTime : "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v11, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;->d:J

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v13    # "time":J
    return-void

    :cond_a
    const-string v8, "APP_DISCARD_SYNC"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 243
    invoke-static {v5, v11, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    move-object v11, v2

    .line 244
    .local v11, "appObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v11, v8

    if-eqz v8, :cond_d

    .line 245
    const-string v8, "app_id"

    invoke-virtual {v11, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, "appId":Ljava/lang/String;
    const-string/jumbo v12, "version"

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 247
    .local v12, "version":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v13

    .line 248
    .local v2, "dbService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    move-object v2, v13

    if-eqz v13, :cond_c

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_3

    .line 252
    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "APP_DISCARD_SYNC with appId: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-interface {v2, v8, v12}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->deleteAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 249
    :cond_c
    :goto_3
    return-void

    .line 256
    .end local v2    # "dbService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v8    # "appId":Ljava/lang/String;
    .end local v11    # "appObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "version":Ljava/lang/String;
    :cond_d
    :goto_4
    return-void
.end method

.method private static a()Z
    .locals 3

    .line 335
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 336
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 337
    const-string v1, "h5_use_syncTime"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    const/4 v2, 0x0

    return v2

    .line 342
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static forceSync(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 18
    .param p0, "syncInfo"    # Lcom/alibaba/fastjson/JSONObject;

    .line 260
    move-object/from16 v1, p0

    const-string v2, "H5SyncUtil"

    const-string v0, "forceSync"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "endTime"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "endTime":Ljava/lang/String;
    const-string v0, "hash"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "hash":Ljava/lang/String;
    const-string v0, "apps"

    const/4 v5, 0x0

    invoke-static {v1, v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    .line 265
    .local v6, "apps":Lcom/alibaba/fastjson/JSONArray;
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object v7, v5

    .line 266
    .local v7, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v7, v0

    if-nez v0, :cond_0

    .line 267
    const-string v0, "h5AppProvider == null"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void

    .line 271
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v13, v6

    goto/16 :goto_5

    .line 276
    :cond_1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v8, v5

    .line 278
    .local v8, "bartDateFormat":Ljava/text/SimpleDateFormat;
    move-object v8, v0

    const-string v9, "GMT+8"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 280
    invoke-virtual {v8, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 282
    .local v0, "endTimeDate":Ljava/util/Date;
    const-wide/16 v9, 0x0

    .line 283
    .local v9, "time":J
    const-class v11, Lcom/alipay/mobile/nebula/provider/H5TimeService;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/mobile/nebula/provider/H5TimeService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-object v12, v5

    .line 284
    .local v12, "h5TimeService":Lcom/alipay/mobile/nebula/provider/H5TimeService;
    move-object v12, v11

    if-eqz v11, :cond_2

    .line 285
    :try_start_1
    invoke-interface {v12}, Lcom/alipay/mobile/nebula/provider/H5TimeService;->getServerTime()J

    move-result-wide v13

    move-wide v9, v13

    goto :goto_0

    .line 324
    .end local v0    # "endTimeDate":Ljava/util/Date;
    .end local v8    # "bartDateFormat":Ljava/text/SimpleDateFormat;
    .end local v9    # "time":J
    .end local v12    # "h5TimeService":Lcom/alipay/mobile/nebula/provider/H5TimeService;
    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v13, v6

    goto/16 :goto_3

    .line 287
    .restart local v0    # "endTimeDate":Ljava/util/Date;
    .restart local v8    # "bartDateFormat":Ljava/text/SimpleDateFormat;
    .restart local v9    # "time":J
    .restart local v12    # "h5TimeService":Lcom/alipay/mobile/nebula/provider/H5TimeService;
    :cond_2
    :goto_0
    const-wide/16 v13, 0x0

    cmp-long v11, v9, v13

    if-nez v11, :cond_3

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v9, v13

    .line 291
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    cmp-long v11, v9, v13

    if-gez v11, :cond_7

    .line 292
    if-eqz v6, :cond_6

    .line 293
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    if-nez v11, :cond_4

    .line 295
    :try_start_3
    new-instance v11, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable$1;

    invoke-direct {v11, v7}, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable$1;-><init>(Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V

    .line 303
    .local v11, "task":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v16, v6

    .end local v6    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .local v16, "apps":Lcom/alibaba/fastjson/JSONArray;
    int-to-double v5, v15

    mul-double v13, v13, v5

    double-to-long v5, v13

    .line 304
    .local v5, "delayTime":J
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v13

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v11, v5, v6, v14}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 305
    move-object/from16 v17, v4

    move-object/from16 v13, v16

    move-object/from16 v16, v3

    .end local v5    # "delayTime":J
    .end local v11    # "task":Ljava/lang/Runnable;
    goto/16 :goto_4

    .line 324
    .end local v0    # "endTimeDate":Ljava/util/Date;
    .end local v8    # "bartDateFormat":Ljava/text/SimpleDateFormat;
    .end local v9    # "time":J
    .end local v12    # "h5TimeService":Lcom/alipay/mobile/nebula/provider/H5TimeService;
    :catch_1
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v13, v16

    move-object/from16 v16, v3

    goto/16 :goto_3

    .end local v16    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .restart local v6    # "apps":Lcom/alibaba/fastjson/JSONArray;
    :catch_2
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v13, v6

    .end local v6    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .restart local v16    # "apps":Lcom/alibaba/fastjson/JSONArray;
    goto/16 :goto_3

    .line 306
    .end local v16    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .restart local v0    # "endTimeDate":Ljava/util/Date;
    .restart local v6    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .restart local v8    # "bartDateFormat":Ljava/text/SimpleDateFormat;
    .restart local v9    # "time":J
    .restart local v12    # "h5TimeService":Lcom/alipay/mobile/nebula/provider/H5TimeService;
    :cond_4
    move-object/from16 v16, v6

    .end local v6    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .restart local v16    # "apps":Lcom/alibaba/fastjson/JSONArray;
    :try_start_5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 307
    .local v5, "appMap":Ljava/util/Map;
    const/4 v6, 0x0

    const/4 v11, 0x0

    .local v6, "index":I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    add-int/lit8 v13, v13, -0x1

    if-gt v6, v13, :cond_5

    .line 308
    move-object/from16 v13, v16

    .end local v16    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .local v13, "apps":Lcom/alibaba/fastjson/JSONArray;
    :try_start_6
    invoke-virtual {v13, v6}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/fastjson/JSONObject;

    .line 309
    .local v11, "app":Lcom/alibaba/fastjson/JSONObject;
    const-string v15, "app_id"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 310
    .local v14, "appID":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-interface {v5, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 307
    nop

    .end local v11    # "app":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "appID":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v16, v13

    goto :goto_1

    .line 324
    .end local v0    # "endTimeDate":Ljava/util/Date;
    .end local v5    # "appMap":Ljava/util/Map;
    .end local v6    # "index":I
    .end local v8    # "bartDateFormat":Ljava/text/SimpleDateFormat;
    .end local v9    # "time":J
    .end local v12    # "h5TimeService":Lcom/alipay/mobile/nebula/provider/H5TimeService;
    :catch_3
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    goto :goto_3

    .line 307
    .end local v13    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .restart local v0    # "endTimeDate":Ljava/util/Date;
    .restart local v5    # "appMap":Ljava/util/Map;
    .restart local v6    # "index":I
    .restart local v8    # "bartDateFormat":Ljava/text/SimpleDateFormat;
    .restart local v9    # "time":J
    .restart local v12    # "h5TimeService":Lcom/alipay/mobile/nebula/provider/H5TimeService;
    .restart local v16    # "apps":Lcom/alibaba/fastjson/JSONArray;
    :cond_5
    move-object/from16 v13, v16

    .line 312
    .end local v6    # "index":I
    .end local v16    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .restart local v13    # "apps":Lcom/alibaba/fastjson/JSONArray;
    :try_start_7
    new-instance v6, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable$2;

    invoke-direct {v6, v7, v5}, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable$2;-><init>(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/util/Map;)V

    .line 319
    .local v6, "task":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "endTime":Ljava/lang/String;
    .end local v4    # "hash":Ljava/lang/String;
    .local v16, "endTime":Ljava/lang/String;
    .local v17, "hash":Ljava/lang/String;
    int-to-double v3, v11

    mul-double v14, v14, v3

    double-to-long v3, v14

    .line 320
    .local v3, "delayTime":J
    :try_start_8
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v11

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v6, v3, v4, v14}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 324
    .end local v0    # "endTimeDate":Ljava/util/Date;
    .end local v3    # "delayTime":J
    .end local v5    # "appMap":Ljava/util/Map;
    .end local v6    # "task":Ljava/lang/Runnable;
    .end local v8    # "bartDateFormat":Ljava/text/SimpleDateFormat;
    .end local v9    # "time":J
    .end local v12    # "h5TimeService":Lcom/alipay/mobile/nebula/provider/H5TimeService;
    :catch_4
    move-exception v0

    goto :goto_3

    .end local v16    # "endTime":Ljava/lang/String;
    .end local v17    # "hash":Ljava/lang/String;
    .local v3, "endTime":Ljava/lang/String;
    .restart local v4    # "hash":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "endTime":Ljava/lang/String;
    .end local v4    # "hash":Ljava/lang/String;
    .restart local v16    # "endTime":Ljava/lang/String;
    .restart local v17    # "hash":Ljava/lang/String;
    goto :goto_3

    .end local v13    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .end local v17    # "hash":Ljava/lang/String;
    .restart local v3    # "endTime":Ljava/lang/String;
    .restart local v4    # "hash":Ljava/lang/String;
    .local v16, "apps":Lcom/alibaba/fastjson/JSONArray;
    :catch_6
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v13, v16

    move-object/from16 v16, v3

    .end local v3    # "endTime":Ljava/lang/String;
    .end local v4    # "hash":Ljava/lang/String;
    .restart local v13    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .local v16, "endTime":Ljava/lang/String;
    .restart local v17    # "hash":Ljava/lang/String;
    goto :goto_3

    .line 292
    .end local v13    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .end local v16    # "endTime":Ljava/lang/String;
    .end local v17    # "hash":Ljava/lang/String;
    .restart local v0    # "endTimeDate":Ljava/util/Date;
    .restart local v3    # "endTime":Ljava/lang/String;
    .restart local v4    # "hash":Ljava/lang/String;
    .local v6, "apps":Lcom/alibaba/fastjson/JSONArray;
    .restart local v8    # "bartDateFormat":Ljava/text/SimpleDateFormat;
    .restart local v9    # "time":J
    .restart local v12    # "h5TimeService":Lcom/alipay/mobile/nebula/provider/H5TimeService;
    :cond_6
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v13, v6

    .end local v3    # "endTime":Ljava/lang/String;
    .end local v4    # "hash":Ljava/lang/String;
    .end local v6    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .restart local v13    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .restart local v16    # "endTime":Ljava/lang/String;
    .restart local v17    # "hash":Ljava/lang/String;
    goto :goto_2

    .line 291
    .end local v13    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .end local v16    # "endTime":Ljava/lang/String;
    .end local v17    # "hash":Ljava/lang/String;
    .restart local v3    # "endTime":Ljava/lang/String;
    .restart local v4    # "hash":Ljava/lang/String;
    .restart local v6    # "apps":Lcom/alibaba/fastjson/JSONArray;
    :cond_7
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v13, v6

    .line 326
    .end local v0    # "endTimeDate":Ljava/util/Date;
    .end local v3    # "endTime":Ljava/lang/String;
    .end local v4    # "hash":Ljava/lang/String;
    .end local v6    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .end local v8    # "bartDateFormat":Ljava/text/SimpleDateFormat;
    .end local v9    # "time":J
    .end local v12    # "h5TimeService":Lcom/alipay/mobile/nebula/provider/H5TimeService;
    .restart local v13    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .restart local v16    # "endTime":Ljava/lang/String;
    .restart local v17    # "hash":Ljava/lang/String;
    :goto_2
    goto :goto_4

    .line 324
    .end local v13    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .end local v16    # "endTime":Ljava/lang/String;
    .end local v17    # "hash":Ljava/lang/String;
    .restart local v3    # "endTime":Ljava/lang/String;
    .restart local v4    # "hash":Ljava/lang/String;
    .restart local v6    # "apps":Lcom/alibaba/fastjson/JSONArray;
    :catch_7
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v13, v6

    .line 325
    .end local v3    # "endTime":Ljava/lang/String;
    .end local v4    # "hash":Ljava/lang/String;
    .end local v6    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v13    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .restart local v16    # "endTime":Ljava/lang/String;
    .restart local v17    # "hash":Ljava/lang/String;
    :goto_3
    const-string v3, "exception"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    const-string v0, "H5_APP_BIZ_SYNC"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string/jumbo v2, "monitor"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string/jumbo v2, "step"

    const-string v3, "forceReq"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 327
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 331
    return-void

    .line 271
    .end local v13    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .end local v16    # "endTime":Ljava/lang/String;
    .end local v17    # "hash":Ljava/lang/String;
    .restart local v3    # "endTime":Ljava/lang/String;
    .restart local v4    # "hash":Ljava/lang/String;
    .restart local v6    # "apps":Lcom/alibaba/fastjson/JSONArray;
    :cond_8
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v13, v6

    .line 272
    .end local v3    # "endTime":Ljava/lang/String;
    .end local v4    # "hash":Ljava/lang/String;
    .end local v6    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .restart local v13    # "apps":Lcom/alibaba/fastjson/JSONArray;
    .restart local v16    # "endTime":Ljava/lang/String;
    .restart local v17    # "hash":Ljava/lang/String;
    :goto_5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v1, p0

    const-string v0, "app"

    const-string/jumbo v2, "step"

    .line 62
    const-class v3, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    iput-object v3, v1, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;->b:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 66
    const-string v4, "H5SyncUtil"

    if-nez v3, :cond_0

    .line 67
    :try_start_0
    const-string v0, "h5AppCenterService==null"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void

    .line 71
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncUtil;->isDownload()Z

    move-result v3

    iput-boolean v3, v1, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;->a:Z

    .line 77
    const-string v3, ""

    .line 79
    .local v3, "app_sync_log":Ljava/lang/String;
    iget-object v5, v1, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 80
    .local v5, "syncMsg":Lcom/alibaba/fastjson/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-static {v6}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 82
    .local v6, "listForceSync":Ljava/util/List;
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 83
    .local v7, "map":Ljava/util/Map;
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_4

    .line 86
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "sync size:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v8, 0x0

    .local v8, "i":I
    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v11

    if-ge v8, v11, :cond_3

    .line 88
    invoke-static {}, Lcom/alipay/mobile/performance/PerformanceSceneHelper;->getInstance()Lcom/alipay/mobile/performance/PerformanceSceneHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alipay/mobile/performance/PerformanceSceneHelper;->cyclicScenceCheck()V

    .line 89
    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/fastjson/JSONObject;

    .line 90
    const-string/jumbo v12, "pl"

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 91
    .local v10, "plStr":Ljava/lang/String;
    move-object v10, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 92
    iget-object v11, v1, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;->b:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-static {v10, v7, v6, v3, v11}, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/alipay/mobile/h5container/service/H5AppCenterService;)V

    .line 87
    .end local v10    # "plStr":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 96
    .end local v8    # "i":I
    :cond_3
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 97
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 99
    .local v10, "listAppRes":Ljava/util/List;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "map size:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-eqz v10, :cond_6

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 101
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_6

    .line 102
    invoke-static {}, Lcom/alipay/mobile/performance/PerformanceSceneHelper;->getInstance()Lcom/alipay/mobile/performance/PerformanceSceneHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alipay/mobile/performance/PerformanceSceneHelper;->cyclicScenceCheck()V

    .line 105
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "listAppRes size:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v11

    if-ne v12, v13, :cond_5

    .line 108
    iget-boolean v13, v1, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, " version:"

    const-string v15, "h5AppCenterService.setUpInfo appId"

    const/4 v9, 0x0

    if-eqz v13, :cond_4

    .line 109
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    iget-object v15, v15, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    .line 112
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v15, v15, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    iget-object v14, v14, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v9, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " download true"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 109
    invoke-static {v4, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v9, v1, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;->b:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 117
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v17, v13

    check-cast v17, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const-string/jumbo v21, "sync_scene"

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v21}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZZLjava/lang/String;)V

    goto :goto_3

    .line 119
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    iget-object v15, v15, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    .line 122
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v15, v15, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    iget-object v14, v14, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v9, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " download false"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 119
    invoke-static {v4, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_5
    iget-object v9, v1, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;->b:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 132
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v17, v13

    check-cast v17, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    const-string/jumbo v21, "sync_scene"

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v21}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZZLjava/lang/String;)V

    .line 101
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 136
    .end local v10    # "listAppRes":Ljava/util/List;
    .end local v12    # "i":I
    :cond_6
    goto/16 :goto_1

    .line 138
    :cond_7
    sget-wide v8, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v10, "monitor"

    const-string v12, "H5_APP_BIZ_SYNC"

    const-wide/16 v13, 0x0

    cmp-long v15, v8, v13

    if-lez v15, :cond_8

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v16, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;->d:J

    cmp-long v15, v8, v16

    if-gez v15, :cond_8

    .line 139
    invoke-static {}, Lcom/alipay/mobile/performance/PerformanceSceneHelper;->getInstance()Lcom/alipay/mobile/performance/PerformanceSceneHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/performance/PerformanceSceneHelper;->cyclicScenceCheck()V

    .line 140
    const-string/jumbo v8, "updateAppScoreInfo from sync"

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v11, v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->updateAppScoreInfo(ZLcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;)V

    .line 142
    sput-wide v13, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;->d:J

    .line 143
    invoke-static {v12}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    .line 144
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v10, v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    .line 145
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    const-string v9, "info"

    const-string/jumbo v13, "syncInfo"

    invoke-virtual {v8, v9, v13}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    const-string/jumbo v9, "type"

    const-string/jumbo v13, "syncType"

    invoke-virtual {v8, v9, v13}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    .line 143
    invoke-static {v8}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 148
    :cond_8
    if-eqz v6, :cond_9

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 149
    invoke-static {}, Lcom/alipay/mobile/performance/PerformanceSceneHelper;->getInstance()Lcom/alipay/mobile/performance/PerformanceSceneHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/performance/PerformanceSceneHelper;->cyclicScenceCheck()V

    .line 150
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v11

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v8}, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;->forceSync(Lcom/alibaba/fastjson/JSONObject;)V

    .line 153
    :cond_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 154
    invoke-static {v12}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    .line 155
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v10, v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    .line 156
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    invoke-virtual {v8, v2, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    .line 157
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    invoke-virtual {v8, v2, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v2, "list"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    .end local v3    # "app_sync_log":Ljava/lang/String;
    .end local v5    # "syncMsg":Lcom/alibaba/fastjson/JSONArray;
    .end local v6    # "listForceSync":Ljava/util/List;
    .end local v7    # "map":Ljava/util/Map;
    :cond_a
    return-void

    .line 84
    .restart local v3    # "app_sync_log":Ljava/lang/String;
    .restart local v5    # "syncMsg":Lcom/alibaba/fastjson/JSONArray;
    .restart local v6    # "listForceSync":Ljava/util/List;
    .restart local v7    # "map":Ljava/util/Map;
    :cond_b
    :goto_4
    return-void

    .line 160
    .end local v3    # "app_sync_log":Ljava/lang/String;
    .end local v5    # "syncMsg":Lcom/alibaba/fastjson/JSONArray;
    .end local v6    # "listForceSync":Ljava/util/List;
    .end local v7    # "map":Ljava/util/Map;
    :catchall_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

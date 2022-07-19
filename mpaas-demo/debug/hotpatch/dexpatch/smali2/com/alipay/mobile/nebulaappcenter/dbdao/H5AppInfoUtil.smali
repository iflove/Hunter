.class public Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInfoUtil;
.super Ljava/lang/Object;
.source "H5AppInfoUtil.java"


# direct methods
.method public static a(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 14

    .line 176
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;-><init>()V

    .line 178
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getPatch()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getOnline()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->online:I

    .line 181
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getAuto_install()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->auto_install:I

    .line 182
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_dsec()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_dsec:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getFallback_base_url()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->fallback_base_url:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getIcon_url()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getSub_url()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->sub_url:Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVhost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    .line 187
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getExtend_info()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getPackage_url()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->package_url:Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getSize()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->size:J

    .line 190
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getMain_url()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getSystem_max()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->system_max:Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getSystem_min()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->system_min:Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 194
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 197
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getThird_platform()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->third_platform:Ljava/lang/String;

    .line 198
    iget v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->app_type:I

    iput v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_type:I

    .line 199
    iget v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->app_channel:I

    iput v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    .line 201
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getRelease_type()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->release_type:Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getIs_mapping()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->is_mapping:I

    .line 205
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getIs_limit()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->is_mapping:I

    .line 206
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getUpdate_app_time()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->update_app_time:Ljava/lang/String;

    .line 208
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getLocalReport()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->localReport:I

    .line 209
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getNbAppType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->nbAppType:Ljava/lang/String;

    .line 210
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getNbl_id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->nbl_id:Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getSlogan()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->slogan:Ljava/lang/String;

    .line 212
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getUnAvailableReason()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->unAvailableReason:Ljava/lang/String;

    .line 215
    :try_start_0
    iget-object p0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    const-string/jumbo v1, "online"

    const-string/jumbo v2, "test"

    const-string v3, "dev"

    const/4 v4, 0x1

    const-string v5, "enable"

    const-string/jumbo v6, "url"

    const-string v7, "launchParams"

    const/4 v8, 0x0

    const-string v9, "host"

    const-string v10, "launchMode"

    if-eqz p0, :cond_5

    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 217
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 218
    nop

    .line 219
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 218
    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    nop

    .line 222
    invoke-static {p0, v9, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 224
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 225
    :cond_0
    new-instance v10, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v10}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 226
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v10, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v10, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v3, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_1
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    nop

    .line 236
    invoke-static {p0, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 238
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 239
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    .line 240
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 242
    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    invoke-virtual {p0, v6, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 246
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 247
    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    invoke-virtual {p0, v6, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_4
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v11, v7, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iput-object v11, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info:Ljava/util/Map;

    .line 253
    goto :goto_0

    .line 255
    :cond_5
    new-instance p0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 256
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 258
    const-string v12, "NebulaApp"

    invoke-virtual {p0, v10, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v12, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v12}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 260
    iget-object v13, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    invoke-virtual {v12, v6, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual {p0, v7, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 265
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v3, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v6, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-virtual {p0, v9, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    nop

    .line 274
    invoke-static {p0, v10, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 273
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-interface {v11, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    nop

    .line 278
    invoke-static {p0, v9, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 277
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    nop

    .line 281
    invoke-static {p0, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 280
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 279
    invoke-interface {v11, v7, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iput-object v11, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 288
    :goto_0
    goto :goto_1

    .line 286
    :catch_0
    move-exception p0

    .line 287
    const-string v1, "H5AppInfoUtil"

    invoke-static {v1, p0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    :goto_1
    return-object v0
.end method

.method public static a(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    .locals 16

    .line 38
    move-object/from16 v1, p1

    if-nez p0, :cond_0

    .line 39
    new-instance v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;-><init>()V

    move-object v2, v0

    goto :goto_0

    .line 38
    :cond_0
    move-object/from16 v2, p0

    .line 42
    :goto_0
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setName(Ljava/lang/String;)V

    .line 43
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setPatch(Ljava/lang/String;)V

    .line 44
    iget v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->online:I

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setOnline(I)V

    .line 45
    iget v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->auto_install:I

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setAuto_install(I)V

    .line 46
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_dsec:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setApp_dsec(Ljava/lang/String;)V

    .line 47
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->fallback_base_url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setFallback_base_url(Ljava/lang/String;)V

    .line 48
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setIcon_url(Ljava/lang/String;)V

    .line 49
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->sub_url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setSub_url(Ljava/lang/String;)V

    .line 50
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setVhost(Ljava/lang/String;)V

    .line 51
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setExtend_info(Ljava/lang/String;)V

    .line 52
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->package_url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setPackage_url(Ljava/lang/String;)V

    .line 53
    iget-wide v3, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->size:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setSize(Ljava/lang/Long;)V

    .line 54
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setMain_url(Ljava/lang/String;)V

    .line 55
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->system_max:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setSystem_max(Ljava/lang/String;)V

    .line 56
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->system_min:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setSystem_min(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setUser_id(Ljava/lang/String;)V

    .line 59
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setApp_id(Ljava/lang/String;)V

    .line 60
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setVersion(Ljava/lang/String;)V

    .line 63
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->third_platform:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setThird_platform(Ljava/lang/String;)V

    .line 64
    iget v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_type:I

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setApp_type(I)V

    .line 65
    iget v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setApp_channel(I)V

    .line 67
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->release_type:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setRelease_type(Ljava/lang/String;)V

    .line 68
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->nbl_id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setNbl_id(Ljava/lang/String;)V

    .line 69
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->nbAppType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setNbAppType(Ljava/lang/String;)V

    .line 70
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->slogan:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setSlogan(Ljava/lang/String;)V

    .line 71
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->unAvailableReason:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setUnAvailableReason(Ljava/lang/String;)V

    .line 74
    iget v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->is_mapping:I

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setIs_mapping(I)V

    .line 75
    iget v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->is_limit:I

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setIs_limit(I)V

    .line 77
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->syncTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "H5AppInfoUtil"

    const-string v4, ""

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUpdate_app_time for syncTime "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->syncTime:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->syncTime:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->update_app_time:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->syncTime:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setUpdate_app_time(Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setUpdate_app_time(Ljava/lang/String;)V

    .line 86
    :goto_1
    iget v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->localReport:I

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setLocalReport(I)V

    .line 90
    :try_start_0
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    const-string/jumbo v4, "online"

    const-string/jumbo v5, "test"

    const-string v6, "dev"

    const/4 v7, 0x1

    const-string v8, "enable"

    const-string/jumbo v9, "url"

    const-string v10, "launchParams"

    const/4 v11, 0x0

    const-string v12, "host"

    const-string v13, "launchMode"

    if-eqz v0, :cond_7

    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    .line 92
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 93
    nop

    .line 94
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 93
    invoke-interface {v14, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    nop

    .line 97
    invoke-static {v0, v12, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v13

    .line 99
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 100
    :cond_2
    new-instance v13, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v13}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 101
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v13, v8, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v7, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v13, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v6, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v13, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v5, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_3
    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    nop

    .line 111
    invoke-static {v0, v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 113
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    .line 114
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 116
    iget-object v4, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    invoke-virtual {v0, v9, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 120
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 121
    iget-object v4, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    invoke-virtual {v0, v9, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_6
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iput-object v14, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info:Ljava/util/Map;

    .line 127
    goto :goto_2

    .line 129
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 130
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 132
    const-string v15, "NebulaApp"

    invoke-virtual {v0, v13, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v15, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v15}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 134
    iget-object v11, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    invoke-virtual {v15, v9, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {v0, v10, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v9, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v9}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 139
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v9, v8, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v7, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v9, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v6, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v9, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v5, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v9, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {v0, v12, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    nop

    .line 148
    const/4 v4, 0x0

    invoke-static {v0, v13, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 147
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-interface {v14, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    nop

    .line 152
    const/4 v4, 0x0

    invoke-static {v0, v12, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 151
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    nop

    .line 155
    const/4 v4, 0x0

    invoke-static {v0, v10, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-interface {v14, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iput-object v14, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    :goto_2
    goto :goto_3

    .line 160
    :catch_0
    move-exception v0

    .line 161
    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    :goto_3
    if-nez p2, :cond_8

    .line 167
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->a()Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->a(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 171
    :cond_8
    return-object v2
.end method

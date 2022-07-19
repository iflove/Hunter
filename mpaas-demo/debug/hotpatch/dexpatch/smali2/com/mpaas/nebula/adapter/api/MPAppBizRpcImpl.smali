.class public Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;
.super Ljava/lang/Object;
.source "MPAppBizRpcImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;


# static fields
.field private static final AUTO_INSTALL_ALL:I = 0x1

.field private static final AUTO_INSTALL_WIFI:I = 0x0

.field public static final FAIL:Ljava/lang/String; = "Fail"

.field public static final START:Ljava/lang/String; = "Start"

.field public static final START_FAIL:Ljava/lang/String; = "Start|Fail"

.field private static final TAG:Ljava/lang/String; = "MPH5Adapter_MPAppBizRpcImpl"

.field public static final TYPE_TINYAPP:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private app_channel(Ljava/lang/String;)I
    .locals 2
    .param p1, "unionExtraData"    # Ljava/lang/String;

    .line 307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 308
    return v1

    .line 311
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 315
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    return v1
.end method

.method private appendTinyLaunchParams(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 7
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 276
    const-string v0, "YES"

    const-string v1, "launchParams"

    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    .line 277
    .local v2, "extend_info_jo":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    return-void

    .line 281
    :cond_0
    :try_start_0
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 282
    .local v3, "extend_info_json":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 284
    .local v4, "launchParams":Lcom/alibaba/fastjson/JSONObject;
    if-nez v4, :cond_1

    .line 285
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v4, v5

    .line 287
    :cond_1
    iget v5, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 288
    const-string v5, "enableDSL"

    invoke-virtual {v4, v5, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v5, "tinyPubRes"

    invoke-virtual {v4, v5, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v0, "nboffline"

    const-string v5, "sync"

    invoke-virtual {v4, v0, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_2
    invoke-virtual {v3, v1, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->scene:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 294
    const-string v0, "scene"

    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->scene:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .end local v3    # "extend_info_json":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "launchParams":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_0

    .line 297
    :catchall_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 300
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private autoInstall(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 344
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const/4 v0, 0x1

    return v0

    .line 347
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private feedbackurl(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "unionExtraData"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;

    .line 328
    iget-object v0, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->key:Ljava/lang/String;

    const-string v1, "feedbackurl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->value:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->fallback_base_url:Ljava/lang/String;

    .line 331
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->fallback_base_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    return-void

    .line 334
    :cond_1
    iget-object v0, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->key:Ljava/lang/String;

    const-string v1, "fallbackbaseurl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->value:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->fallback_base_url:Ljava/lang/String;

    .line 338
    :cond_2
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .line 362
    const-string v0, "appinfo"

    invoke-static {v0, p0}, Lcom/mpaas/mas/adapter/api/MPLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method private makeMap(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Ljava/util/Map;
    .locals 6
    .param p1, "appReq"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppReq;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 71
    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->query:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->query:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 73
    .local v1, "headerJsonOb":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 75
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 76
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 79
    .local v4, "key":Ljava/lang/String;
    invoke-direct {p0, v1, v4}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->version(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    nop

    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_0

    .line 81
    :catch_0
    move-exception v4

    .line 82
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "MPH5Adapter_MPAppBizRpcImpl"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 88
    .end local v1    # "headerJsonOb":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method private mapToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 159
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 161
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v3, "\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v3, "\" "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    return-object v1

    .line 172
    :cond_1
    const/16 v2, 0x20

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_2

    .line 173
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 176
    :cond_2
    goto :goto_1

    .line 175
    :catch_0
    move-exception v2

    .line 177
    :goto_1
    return-object v1
.end method

.method private size(Ljava/lang/String;)J
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 320
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->log(Ljava/lang/String;)V

    .line 323
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private transUnionResource2AppRes(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 7
    .param p1, "unionResourceResult"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 181
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    .local p3, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->info:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->info:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->info:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;

    .line 183
    .local v0, "unionResourceInfo":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;
    if-eqz v0, :cond_1

    .line 184
    iget-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->item:Ljava/util/List;

    .line 185
    .local v1, "unionResourceItemList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;>;"
    if-eqz v1, :cond_1

    .line 186
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;

    .line 187
    .local v3, "unionResourceItem":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;
    if-eqz v3, :cond_0

    .line 188
    invoke-virtual {p0, v3}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->transUnionResource2AppInfo(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v4

    .line 189
    .local v4, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v4, :cond_0

    .line 190
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v5, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v6, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {p3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rsp item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MPH5Adapter_MPAppBizRpcImpl"

    invoke-static {v6, v5}, Lcom/mpaas/mas/adapter/api/MPLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .end local v3    # "unionResourceItem":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;
    .end local v4    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_0
    goto :goto_0

    .line 199
    .end local v0    # "unionResourceInfo":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;
    .end local v1    # "unionResourceItemList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;>;"
    :cond_1
    return-void
.end method

.method private version(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 92
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "0"

    if-eqz v1, :cond_0

    .line 94
    return-object v2

    .line 96
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "version"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "version":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    return-object v3

    .line 99
    :cond_2
    :goto_0
    return-object v2
.end method

.method private vhost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "vhost"    # Ljava/lang/String;

    .line 351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x0

    return-object v0

    .line 354
    :cond_0
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    return-object p1

    .line 357
    :cond_1
    const-string v1, "http"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writeRPCLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "status"    # Ljava/lang/String;
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RPC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mpaas/mas/adapter/api/MPLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    return-void
.end method


# virtual methods
.method public app(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .locals 2
    .param p1, "req"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->rpcCall(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MPH5Adapter_MPAppBizRpcImpl"

    invoke-static {v1, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method public handlerPKgJson(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public rpcCall(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .locals 17
    .param p1, "appReq"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .line 105
    move-object/from16 v1, p0

    const-string v2, "MPH5Adapter_MPAppBizRpcImpl"

    const-string v3, "Start|Fail"

    const-string v4, "H5_APP_REQUEST"

    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;-><init>(Landroid/content/Context;)V

    move-object v5, v0

    .line 106
    .local v5, "nebulaCenterOperator":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;
    const/4 v6, 0x0

    .line 108
    .local v6, "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    :try_start_0
    const-string v0, "start rpc"

    invoke-static {v0}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->log(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "req: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct/range {p0 .. p1}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->makeMap(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Ljava/util/Map;

    move-result-object v0

    move-object v7, v0

    .line 111
    .local v7, "reqMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    move-object v8, v0

    .line 112
    .local v8, "logContext":Lcom/alipay/mobile/common/logging/api/LogContext;
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v9, v0

    .line 113
    .local v9, "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    const-string v0, "debug"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v10, p1

    :try_start_1
    iget-object v11, v10, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->nbsource:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "testPackage"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v0, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "extra info "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->log(Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;

    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPLogger;->getUserId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8}, Lcom/alipay/mobile/common/logging/api/LogContext;->getChannelId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v16

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v0

    .line 118
    .local v11, "runtimeInfo":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;
    const/4 v0, 0x0

    invoke-virtual {v5, v11, v0, v7}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->rpcRequest(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;Lcom/alipay/mobile/common/rpc/RpcFactory;Ljava/util/Map;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v12, v0

    .line 120
    .local v12, "unionResourceResult":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "rsp: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->info:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;

    iget-object v13, v13, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->success:Ljava/lang/Boolean;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->info:Ljava/util/List;

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;

    iget-object v13, v13, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->message:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "rsp: error: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lcom/mpaas/mas/adapter/api/MPLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v12, :cond_1

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "result == null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {v2}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;-><init>()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^step=fail^err=[1]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 126
    invoke-static {v4, v2, v13}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 128
    invoke-static {v3, v0}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->writeRPCLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_1

    :cond_1
    iget-object v0, v12, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;-><init>()V

    move-object v6, v0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "result.success=false"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    iput-object v2, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    .line 134
    iget-object v13, v12, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->message:Ljava/lang/String;

    iput-object v13, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->rpcFailDes:Ljava/lang/String;

    .line 135
    new-instance v13, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {v13}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "^step=fail^err=[2]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v12, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->message:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v13, v14}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 137
    invoke-static {v3, v0}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->writeRPCLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    nop

    .line 153
    .end local v7    # "reqMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "logContext":Lcom/alipay/mobile/common/logging/api/LogContext;
    .end local v9    # "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "runtimeInfo":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;
    .end local v12    # "unionResourceResult":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;
    :goto_1
    goto :goto_3

    .line 139
    .restart local v7    # "reqMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "logContext":Lcom/alipay/mobile/common/logging/api/LogContext;
    .restart local v9    # "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    .restart local v11    # "runtimeInfo":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;
    .restart local v12    # "unionResourceResult":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;
    :cond_2
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;-><init>()V

    move-object v6, v0

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    iput-object v0, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    .line 142
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v2, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1, v12, v0, v2}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->transUnionResource2AppRes(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;Ljava/util/List;Ljava/util/HashMap;)V

    .line 144
    new-instance v13, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {v13}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "^step=success^data={"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-direct {v1, v2}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "}^list={"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 144
    invoke-static {v4, v13, v14}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    return-object v6

    .line 148
    .end local v0    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    .end local v2    # "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "reqMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "logContext":Lcom/alipay/mobile/common/logging/api/LogContext;
    .end local v9    # "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "runtimeInfo":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;
    .end local v12    # "unionResourceResult":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v10, p1

    .line 149
    .local v0, "throwable":Ljava/lang/Throwable;
    :goto_2
    new-instance v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {v2}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^step=fail^err=[-1]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 149
    invoke-static {v4, v2, v7}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 151
    invoke-static {v3, v0}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->writeRPCLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->rpcFailDes:Ljava/lang/String;

    .line 154
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_3
    return-object v6
.end method

.method public rpcCall(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "appReq"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method protected transUnionResource2AppInfo(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 6
    .param p1, "unionResourceItem"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;

    .line 220
    if-nez p1, :cond_0

    .line 221
    const/4 v0, 0x0

    return-object v0

    .line 223
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;-><init>()V

    .line 224
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    iget-object v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 225
    iget-object v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->package_url:Ljava/lang/String;

    .line 226
    iget-object v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 227
    iget-object v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    .line 228
    const/4 v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_type:I

    .line 229
    iget-object v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resExtraData:Ljava/util/List;

    .line 230
    .local v1, "resExtraData":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;>;"
    if-eqz v1, :cond_b

    .line 231
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;

    .line 232
    .local v3, "unionExtraData":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;
    if-eqz v3, :cond_a

    .line 233
    invoke-direct {p0, v0, v3}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->feedbackurl(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;)V

    .line 234
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->key:Ljava/lang/String;

    const-string v5, "mainurl"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 235
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->value:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    goto/16 :goto_1

    .line 236
    :cond_1
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->key:Ljava/lang/String;

    const-string v5, "vhost"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 237
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->value:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->vhost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    goto/16 :goto_1

    .line 238
    :cond_2
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->key:Ljava/lang/String;

    const-string v5, "autoinstall"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 239
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->value:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->autoInstall(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->auto_install:I

    goto/16 :goto_1

    .line 240
    :cond_3
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->key:Ljava/lang/String;

    const-string v5, "extendinfo"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 241
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->value:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    goto/16 :goto_1

    .line 242
    :cond_4
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->key:Ljava/lang/String;

    const-string v5, "iconUrl"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 243
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->value:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    goto :goto_1

    .line 244
    :cond_5
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->key:Ljava/lang/String;

    const-string v5, "resName"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 245
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->value:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    goto :goto_1

    .line 246
    :cond_6
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->key:Ljava/lang/String;

    const-string v5, "resType"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 247
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->value:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->app_channel(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    goto :goto_1

    .line 248
    :cond_7
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->key:Ljava/lang/String;

    const-string v5, "size"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 249
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->value:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->size(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->size:J

    goto :goto_1

    .line 250
    :cond_8
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->key:Ljava/lang/String;

    const-string v5, "scene"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 251
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->value:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->scene:Ljava/lang/String;

    .line 252
    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->scene:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->release_type:Ljava/lang/String;

    goto :goto_1

    .line 253
    :cond_9
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->key:Ljava/lang/String;

    const-string v5, "app_type"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 255
    :try_start_0
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    goto :goto_1

    .line 256
    :catch_0
    move-exception v4

    .line 257
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "exception in parsing app_type"

    invoke-static {v5}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->log(Ljava/lang/String;)V

    .line 261
    .end local v3    # "unionExtraData":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_1
    goto/16 :goto_0

    .line 263
    :cond_b
    invoke-direct {p0, v0}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->appendTinyLaunchParams(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 265
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mpaas/nebula/adapter/api/MPAppBizRpcImpl;->log(Ljava/lang/String;)V

    .line 266
    return-object v0
.end method

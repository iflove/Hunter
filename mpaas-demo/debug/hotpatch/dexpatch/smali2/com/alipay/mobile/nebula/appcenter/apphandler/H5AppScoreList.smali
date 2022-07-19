.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;
.super Ljava/lang/Object;
.source "H5AppScoreList.java"


# static fields
.field private static final H5_LIMIT_CODE:I = 0x18769

.field public static final PRE_DOWNLOAD_IN_WIFI_STRATEGY:I = 0x4

.field public static final PRE_ZIP_STRATEGY:I = 0x1

.field private static final RPC_LIMIT_TAG:Ljava/lang/String; = "limit_tag"

.field private static final SCORE_RPC_TYPE:Ljava/lang/String; = "com.alipay.hpmweb.queryAppCredit"

.field public static final STRONG_REQ_STRATEGY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "H5AppScoreList"

.field private static instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;


# instance fields
.field private appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

.field private enable:Z

.field private limitRate:J

.field private reqRate:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->initSwitchConfig()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->enableSendRpc()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->initData()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;
    .param p2, "x2"    # Z

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->invokeCallback(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;
    .param p1, "x1"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->saveResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;

    .line 28
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->initAppCreditInfo(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    return-object v0
.end method

.method private enableSendRpc()Z
    .locals 10

    .line 257
    const-string v0, "h5_app_score_rpc_time"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5SharedPreUtil;->getLongData(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, v3

    .line 258
    .local v5, "lastTime":J
    move-wide v5, v1

    const/4 v7, 0x1

    cmp-long v8, v1, v3

    if-lez v8, :cond_2

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 260
    .local v0, "currentTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "currentTime : "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " lastTime : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " reqRate : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->reqRate:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " limitRate : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->limitRate:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "H5AppScoreList"

    invoke-static {v8, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->rpcLimit()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->limitRate:J

    goto :goto_0

    :cond_0
    iget-wide v8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->reqRate:J

    .line 263
    .local v8, "rate":J
    :goto_0
    cmp-long v2, v5, v3

    if-lez v2, :cond_1

    sub-long v2, v0, v5

    cmp-long v4, v2, v8

    if-lez v4, :cond_1

    .line 264
    return v7

    .line 266
    .end local v0    # "currentTime":J
    .end local v8    # "rate":J
    :cond_1
    nop

    .line 271
    const/4 v0, 0x0

    return v0

    .line 268
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5SharedPreUtil;->saveLongData(Ljava/lang/String;J)V

    .line 269
    return v7
.end method

.method private getCreditStrategy(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)I
    .locals 5
    .param p1, "credit"    # Ljava/lang/String;
    .param p2, "configObj"    # Lcom/alibaba/fastjson/JSONObject;

    const-string v0, "H5AppScoreList"

    .line 242
    invoke-static {p2, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 243
    .local v2, "strategyStr":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    const/4 v0, 0x0

    return v0

    .line 246
    :cond_0
    const/4 v1, 0x0

    .line 248
    .local v1, "strategy":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    .line 251
    goto :goto_0

    .line 249
    :catchall_0
    move-exception v3

    .line 250
    .local v3, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " strategy : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return v1
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;
    .locals 2

    const-class v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    .line 56
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized initAppCreditInfo(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 7

    monitor-enter p0

    .line 194
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 198
    :cond_0
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;-><init>()V

    .line 199
    const-string v2, "data"

    invoke-static {p1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 200
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_4

    .line 204
    :cond_1
    const-string v3, "config"

    invoke-static {p1, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 205
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_3

    .line 209
    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 210
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 211
    const-string v5, "credit"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 212
    const-string v6, "appId"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-virtual {v1, v5, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->addCreditAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->getCreditMap()Ljava/util/Map;

    move-result-object v2

    .line 216
    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 220
    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 221
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 222
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 223
    invoke-direct {p0, v3, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getCreditStrategy(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)I

    move-result v3

    .line 225
    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 226
    invoke-virtual {v1, v5, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->addStrategyInfo(ILjava/util/List;)V

    .line 229
    :cond_5
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 230
    invoke-virtual {v1, v5, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->addStrategyInfo(ILjava/util/List;)V

    .line 233
    :cond_6
    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    .line 234
    invoke-virtual {v1, v4, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->addStrategyInfo(ILjava/util/List;)V

    .line 236
    :cond_7
    goto :goto_1

    .line 237
    :cond_8
    const-string p1, "H5AppScoreList"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "creditInfo : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iput-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    .line 217
    :cond_9
    :goto_2
    :try_start_1
    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    .line 206
    :cond_a
    :goto_3
    :try_start_2
    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 201
    :cond_b
    :goto_4
    :try_start_3
    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 195
    :cond_c
    :goto_5
    :try_start_4
    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private initData()V
    .locals 2

    .line 186
    const-string v0, "h5_app_score_info"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5SharedPreUtil;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 187
    .local v1, "creditStr":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    return-void

    .line 190
    :cond_0
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->initAppCreditInfo(Lcom/alibaba/fastjson/JSONObject;)V

    .line 191
    return-void
.end method

.method private initSwitchConfig()V
    .locals 8

    .line 280
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 281
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->enable:Z

    .line 282
    if-nez v0, :cond_0

    .line 283
    return-void

    .line 285
    :cond_0
    const-string v2, "h5_nbcredit"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 286
    .local v4, "config":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    return-void

    .line 289
    :cond_1
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 290
    .local v3, "configObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 291
    const-string/jumbo v2, "switch"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "YES"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->enable:Z

    .line 292
    const-string/jumbo v2, "reqrate"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v5, v1

    .line 293
    .local v5, "req":I
    move v5, v2

    if-lez v2, :cond_2

    .line 294
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->reqRate:J

    goto :goto_0

    .line 296
    :cond_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x18

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->reqRate:J

    .line 298
    :goto_0
    const-string v2, "limitrate"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 299
    .local v1, "limit":I
    move v1, v2

    if-lez v2, :cond_3

    .line 300
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->limitRate:J

    goto :goto_1

    .line 302
    :cond_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xa

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->limitRate:J

    .line 305
    .end local v1    # "limit":I
    .end local v5    # "req":I
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " enable : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->enable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reqRate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->reqRate:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " limitRate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->limitRate:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5AppScoreList"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method private invokeCallback(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;Z)V
    .locals 0
    .param p1, "rpcListener"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;
    .param p2, "success"    # Z

    .line 180
    if-eqz p1, :cond_0

    .line 181
    invoke-interface {p1, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;->onFinish(Z)V

    .line 183
    :cond_0
    return-void
.end method

.method private rpcLimit()Z
    .locals 1

    .line 275
    const-string v0, "h5_score_rpc_limit"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5SharedPreUtil;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private saveResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .line 310
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5SharedPreUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "h5_score_rpc_limit"

    .line 311
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "h5_app_score_rpc_time"

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "h5_app_score_info"

    .line 313
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 314
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    return-void

    .line 315
    :catchall_0
    move-exception v0

    .line 316
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5AppScoreList"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public declared-synchronized checkPreInstallApp()V
    .locals 2

    monitor-enter p0

    .line 141
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->enable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 142
    monitor-exit p0

    return-void

    .line 144
    :cond_0
    :try_start_1
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$2;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 140
    .end local p0    # "this":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearAppScoreInfo()V
    .locals 2

    monitor-enter p0

    .line 322
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    .line 323
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5SharedPreUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "h5_score_rpc_limit"

    .line 324
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "h5_app_score_rpc_time"

    .line 325
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "h5_app_score_info"

    .line 326
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 327
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    monitor-exit p0

    return-void

    .line 328
    :catchall_0
    move-exception v0

    .line 329
    .local v0, "throwable":Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "H5AppScoreList"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 331
    .end local v0    # "throwable":Ljava/lang/Throwable;
    monitor-exit p0

    return-void

    .line 321
    .end local p0    # "this":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppCredit(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->getCreditMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    .line 81
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->getCreditMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->getCreditMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 85
    .local v1, "mapEntry":Ljava/util/Map$Entry;
    move-object v1, v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 86
    .local v2, "appList":Ljava/util/List;
    move-object v2, v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 89
    .end local v1    # "mapEntry":Ljava/util/Map$Entry;
    .end local v2    # "appList":Ljava/util/List;
    .end local p0    # "this":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;
    :cond_1
    goto :goto_0

    .line 90
    :cond_2
    :try_start_1
    const-string v0, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 82
    :cond_3
    :goto_1
    :try_start_2
    const-string v0, "0"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 79
    .end local p1    # "appId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAppListWithStrategy(I)Ljava/util/List;
    .locals 2
    .param p1, "strategy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->getStrategyMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->getStrategyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 73
    .end local p0    # "this":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 71
    .end local p1    # "strategy":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isInStrategy(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "strategy"    # I

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->getStrategyMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    .line 62
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->getStrategyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;->getStrategyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    .line 67
    .local v2, "appIdList":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;
    :cond_1
    monitor-exit p0

    return v1

    .line 64
    .end local v2    # "appIdList":Ljava/util/List;
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    .line 60
    .end local p1    # "appId":Ljava/lang/String;
    .end local p2    # "strategy":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateAppScoreInfo(ZLcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;)V
    .locals 2
    .param p1, "forceRequest"    # Z
    .param p2, "rpcListener"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;

    .line 94
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->enable:Z

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->invokeCallback(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;Z)V

    .line 96
    return-void

    .line 98
    :cond_0
    const-string v0, "NORMAL"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;ZLcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

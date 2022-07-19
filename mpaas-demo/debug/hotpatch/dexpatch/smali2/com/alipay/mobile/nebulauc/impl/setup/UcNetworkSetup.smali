.class public Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;
.super Ljava/lang/Object;
.source "UcNetworkSetup.java"


# static fields
.field private static final LAST_CLEAR_CACHE_SWITCH_VALUE:Ljava/lang/String; = "lastClearCacheSwitchValue"

.field private static final TAG:Ljava/lang/String; = "H5UcService::UcNetworkSetup"

.field public static sH2AppIdBlackList:Lcom/alibaba/fastjson/JSONArray;

.field public static sMaxRequestPerClient:I

.field public static sMaxRequestPerHost:I

.field public static sUcRequestSettingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sUcRequestSettingEnabled:Z

    .line 33
    const/16 v0, 0xd

    sput v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sMaxRequestPerClient:I

    .line 34
    const/4 v0, 0x6

    sput v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sMaxRequestPerHost:I

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sH2AppIdBlackList:Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 28
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->setThirdNetwork()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 28
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->setNetworkDelegate()V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .line 28
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->initUcRequestSetting()V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .line 28
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->initHttpCacheUpperSize()V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    .line 28
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->initUcHttpCacheSdCardSetting()V

    return-void
.end method

.method public static clearUcHttpCache()V
    .locals 4

    .line 245
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    return-void

    .line 248
    :cond_0
    const/4 v0, 0x0

    const-string v1, "lastClearCacheSwitchValue"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "lastClearCacheSwitchValue":Ljava/lang/String;
    const-string v2, "h5_clearUcHttpCache"

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "currentClearCacheSwitchValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 251
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 253
    new-instance v3, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup$2;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup$2;-><init>()V

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 265
    :cond_1
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method private static disableUcNetByPhoneInfo(Lcom/alibaba/fastjson/JSONArray;)Z
    .locals 15
    .param p0, "jsonArray"    # Lcom/alibaba/fastjson/JSONArray;

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "result":Z
    const-string v1, "H5UcService::UcNetworkSetup"

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 196
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 197
    .local v2, "manufacturer":Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 198
    .local v3, "model":Ljava/lang/String;
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 199
    .local v4, "release":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[UcNetworkSetup] disableUcNetByPhoneInfo jsonArray is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[UcNetworkSetup] disableUcNetByPhoneInfo loop jsonArray round "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 203
    .local v6, "object":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v6, :cond_5

    .line 204
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v7

    .line 205
    .local v7, "objSize":I
    const/4 v8, 0x0

    .line 206
    .local v8, "ma":Z
    const/4 v9, 0x0

    .line 207
    .local v9, "mo":Z
    const/4 v10, 0x0

    .line 208
    .local v10, "re":Z
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 209
    .local v12, "key":Ljava/lang/String;
    invoke-virtual {v6, v12}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 210
    .local v13, "value":Ljava/lang/String;
    const-string v14, "ma"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 211
    invoke-static {v2, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    .line 213
    :cond_0
    const-string v14, "model"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 214
    invoke-static {v3, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    .line 216
    :cond_1
    const-string v14, "release"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 217
    invoke-static {v4, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    .line 219
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 220
    :cond_3
    const/4 v11, 0x2

    const-string v12, "[UcNetworkSetup] disableUcNetByPhoneInfo loop object in round "

    if-ne v7, v11, :cond_4

    .line 221
    if-eqz v8, :cond_4

    if-eqz v9, :cond_4

    .line 222
    const/4 v0, 0x1

    .line 223
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", ma && mo break"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    goto :goto_2

    .line 227
    :cond_4
    const/4 v11, 0x3

    if-ne v7, v11, :cond_5

    .line 228
    if-eqz v8, :cond_5

    and-int v11, v9, v10

    if-eqz v11, :cond_5

    .line 229
    const/4 v0, 0x1

    .line 230
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", ma && mo & re break"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    goto :goto_2

    .line 200
    .end local v6    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "objSize":I
    .end local v8    # "ma":Z
    .end local v9    # "mo":Z
    .end local v10    # "re":Z
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 237
    .end local v2    # "manufacturer":Ljava/lang/String;
    .end local v3    # "model":Ljava/lang/String;
    .end local v4    # "release":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_6
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UcNetworkSetup] disableUcNetByPhoneInfo result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return v0
.end method

.method private static initHttpCacheUpperSize()V
    .locals 7

    .line 173
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    return-void

    .line 176
    :cond_0
    const-string v0, "initHttpCacheUpperSize"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 177
    const-string v1, "uc_httpcache_dynamic_upper_limit"

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "httpCacheSizeStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 180
    .local v2, "httpCacheSize":I
    if-lez v2, :cond_1

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set max http cache size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5UcService::UcNetworkSetup"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :try_start_0
    const-string v3, "httpCacheSize"

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 184
    const/16 v3, 0xa

    mul-int/lit16 v5, v2, 0x400

    mul-int/lit16 v5, v5, 0x400

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    goto :goto_0

    .line 185
    :catchall_0
    move-exception v3

    .line 186
    .local v3, "throwable":Ljava/lang/Throwable;
    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    .end local v2    # "httpCacheSize":I
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static initNetworkConfig()V
    .locals 1

    .line 43
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup$1;-><init>()V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method private static initUcHttpCacheSdCardSetting()V
    .locals 9

    .line 144
    const-string v0, "H5UcService::UcNetworkSetup"

    const-string v1, "[UcNetworkSetup] initUcHttpCacheSdCardSetting"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "initUcHttpCacheSdCardSetting"

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 146
    nop

    .line 147
    const-string v2, "h5_httpCacheSdcardLimit"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 148
    .local v2, "ucRequestSetting":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_3

    .line 149
    const-string v3, "IMG_SIZE_LIMIT"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 150
    .local v4, "imgSizeLimit":I
    if-lez v4, :cond_0

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[initUcHttpCacheSdCardSetting] IMG_SIZE_LIMIT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {v3, v4}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalIntValue(Ljava/lang/String;I)V

    .line 154
    :cond_0
    const-string v3, "JS_SIZE_LIMIT"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 155
    .local v5, "jsSizeLimit":I
    if-lez v5, :cond_1

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[initUcHttpCacheSdCardSetting] JS_SIZE_LIMIT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {v3, v5}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalIntValue(Ljava/lang/String;I)V

    .line 159
    :cond_1
    const-string v3, "CSS_SIZE_LIMIT"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v6

    .line 160
    .local v6, "cssSizeLimit":I
    if-lez v6, :cond_2

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[initUcHttpCacheSdCardSetting] CSS_SIZE_LIMIT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {v3, v6}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalIntValue(Ljava/lang/String;I)V

    .line 164
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5PageData;->ucCacheSdcardLimit:Ljava/lang/String;

    .line 166
    .end local v4    # "imgSizeLimit":I
    .end local v5    # "jsSizeLimit":I
    .end local v6    # "cssSizeLimit":I
    :cond_3
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private static initUcRequestSetting()V
    .locals 8

    .line 101
    const-string v0, "H5UcService::UcNetworkSetup"

    const-string v1, "[UcNetworkSetup] initUcRequestSetting"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "initUcRequestSetting"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 103
    nop

    .line 104
    const-string v1, "h5_ucRequestSetting"

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 105
    .local v1, "ucRequestSetting":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_4

    .line 106
    const-string v2, "per_host"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sMaxRequestPerHost:I

    .line 107
    const-string v2, "per_client"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sMaxRequestPerClient:I

    .line 108
    const-string v2, "min_sdk"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    .line 109
    .local v2, "minSdk":I
    if-nez v2, :cond_0

    .line 110
    const/16 v2, 0x17

    .line 113
    :cond_0
    const-string v3, "app_blacklist"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sH2AppIdBlackList:Lcom/alibaba/fastjson/JSONArray;

    .line 114
    const-string v3, "list"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "h2list":Ljava/lang/String;
    const-string v4, "enabled"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sUcRequestSettingEnabled:Z

    .line 118
    if-eqz v4, :cond_4

    .line 119
    sget v4, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sMaxRequestPerHost:I

    const/4 v5, 0x0

    if-lez v4, :cond_3

    sget v4, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sMaxRequestPerClient:I

    if-lez v4, :cond_3

    .line 120
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v4, "limit_info":Ljava/util/HashMap;
    sget v6, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sMaxRequestPerHost:I

    const/4 v7, 0x6

    if-le v6, v7, :cond_1

    .line 122
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "max_req_per_host"

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_1
    sget v6, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->sMaxRequestPerClient:I

    const/16 v7, 0xd

    if-le v6, v7, :cond_2

    .line 125
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "max_req_per_client"

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_2
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 128
    const/4 v6, 0x7

    invoke-static {v6, v4, v5}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;

    .line 132
    .end local v4    # "limit_info":Ljava/util/HashMap;
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 133
    const/16 v4, 0x8

    invoke-static {v4, v3, v5}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;

    .line 137
    .end local v2    # "minSdk":I
    .end local v3    # "h2list":Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method private static setNetworkDelegate()V
    .locals 6

    .line 82
    const-string v0, "H5UcService::UcNetworkSetup"

    const-string v1, "[UcNetworkSetup] setNetworkDelegate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "setNetworkDelegate"

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 84
    nop

    .line 85
    const-string v2, "h5_cdnWebPConfig"

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 86
    .local v2, "jsonObjWebp":Lcom/alibaba/fastjson/JSONObject;
    const/4 v3, 0x0

    .line 87
    .local v3, "useWebp":Z
    if-eqz v2, :cond_0

    .line 88
    const-string v4, "enable"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "YES"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 90
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UcNetworkSetup] useWebp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-eqz v3, :cond_1

    .line 92
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetworkDelegate;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetworkDelegate;-><init>()V

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->setNetworkDelegate(Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;)V

    .line 94
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method private static setThirdNetwork()V
    .locals 6

    .line 59
    const-string v0, "H5UcService::UcNetworkSetup"

    const-string v1, "[UcNetworkSetup] setThirdNetwork"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "setThirdNetwork"

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 62
    const-string v2, "h5_ucNetConfig"

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 63
    .local v2, "jsonObjNetWork":Lcom/alibaba/fastjson/JSONObject;
    const/4 v3, 0x0

    .line 64
    .local v3, "useAlipayNet":Z
    if-eqz v2, :cond_0

    .line 65
    const-string v4, "useAlipayNet"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "YES"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 68
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UcNetworkSetup] useAlipayNet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-eqz v3, :cond_1

    .line 70
    const-string v0, "phoneBlacklist"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcNetworkSetup;->disableUcNetByPhoneInfo(Lcom/alibaba/fastjson/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;-><init>()V

    new-instance v4, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetworkDecider;

    invoke-direct {v4}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetworkDecider;-><init>()V

    invoke-static {v0, v4}, Lcom/uc/webview/export/extension/UCCore;->setThirdNetwork(Lcom/uc/webview/export/internal/interfaces/INetwork;Lcom/uc/webview/export/internal/interfaces/INetworkDecider;)V

    .line 75
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 76
    return-void
.end method

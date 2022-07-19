.class public Lcom/alipay/mobile/nebula/log/H5LogData;
.super Ljava/lang/Object;
.source "H5LogData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5LogData"


# instance fields
.field private currentParamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private param1Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private param2Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private param3Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private param4Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private seedId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "seedId"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private getLogGroup()Ljava/lang/String;
    .locals 3

    .line 288
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 289
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 290
    const-string v0, "h5_logGroup"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 292
    :cond_0
    return-object v1
.end method

.method public static seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;
    .locals 1
    .param p0, "seeId"    # Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/alipay/mobile/nebula/log/H5LogData;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/log/H5LogData;-><init>(Ljava/lang/String;)V

    .line 37
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 105
    const-string v0, "H5LogData"

    const-string/jumbo v1, "please addParam first !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-object p0

    .line 108
    :cond_0
    if-nez p2, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-object p0
.end method

.method public addMapParam(Ljava/util/Map;)Lcom/alipay/mobile/nebula/log/H5LogData;
    .locals 5
    .param p1, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alipay/mobile/nebula/log/H5LogData;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 133
    const-string v0, "H5LogData"

    const-string/jumbo v1, "please addParam first !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-object p0

    .line 136
    :cond_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 139
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 140
    .local v1, "entry":Ljava/util/Map$Entry;
    move-object v1, v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "value":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 143
    :cond_3
    return-object p0

    .line 137
    :cond_4
    :goto_2
    return-object p0
.end method

.method public addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string v1, "H5LogData"

    if-nez v0, :cond_0

    .line 120
    const-string/jumbo v0, "please addParam first !"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-object p0

    .line 123
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-object p0

    .line 124
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "empty value, key : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-object p0
.end method

.method public addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;
    .locals 16
    .param p1, "h5PageData"    # Lcom/alipay/mobile/h5container/api/H5PageData;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "webViewErrorDesc"

    .line 148
    iget-object v0, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string v4, "H5LogData"

    if-nez v0, :cond_0

    .line 149
    const-string/jumbo v0, "please addParam first !"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-object v1

    .line 152
    :cond_0
    if-nez v2, :cond_1

    .line 153
    const-string v0, "h5PageData == null, return"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-object v1

    .line 157
    :cond_1
    sget-object v5, Lcom/alipay/mobile/nebula/log/H5Logger;->bizScenario:Ljava/lang/String;

    .line 158
    .local v5, "bizScenario":Ljava/lang/String;
    const-string v0, "isOfflineApp"

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 160
    .local v7, "isOfflineApp":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    move-object v9, v8

    .line 161
    .local v9, "title":Ljava/lang/String;
    move-object v9, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, ""

    if-nez v0, :cond_2

    .line 162
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v11, " "

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v11, ","

    .line 163
    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "\n"

    .line 164
    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v0

    .line 167
    :cond_2
    move-object v11, v10

    .line 169
    .local v11, "customParams":Ljava/lang/String;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getCustomParams()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v12, "utf-8"

    invoke-static {v0, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v11, v0

    .line 172
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, "isH5Activity"

    invoke-virtual {v2, v0, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    .local v0, "isH5Activity":Z
    move-object v6, v10

    .line 175
    .local v6, "viewId":Ljava/lang/String;
    move-object v12, v10

    .line 177
    .local v12, "refViewID":Ljava/lang/String;
    const-string/jumbo v13, "refViewID"

    const-string/jumbo v14, "viewID"

    if-eqz v0, :cond_6

    .line 178
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 179
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 180
    invoke-static {v14}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v6, v14

    goto :goto_1

    .line 184
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v6, v15

    .line 185
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 186
    invoke-static {v14, v6}, Lcom/alipay/mobile/nebula/log/H5Logger;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getReferUrl()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 191
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 192
    invoke-static {v13}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    goto :goto_2

    .line 196
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getReferUrl()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v12, v14

    .line 197
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 198
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 199
    invoke-static {v13, v12}, Lcom/alipay/mobile/nebula/log/H5Logger;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 205
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 206
    invoke-static {v14}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v6, v14

    .line 207
    invoke-static {v13}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 211
    :cond_7
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getXContentVersion()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 212
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v14, "xContentVersion"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getXContentVersion()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getEagleId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 215
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string v14, "eagleId"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getEagleId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getRequestId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 218
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v14, "requestId"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getRequestId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSpmId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 221
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v14, "spmId"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getSpmId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 225
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v14, "pageId"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alipay/mobile/nebula/log/H5Logger;->getPageId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_c
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v14, "url"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getMaxLogStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v14, "referer"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getReferUrl()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getMaxLogStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getParentAppId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v14, "appId"

    if-eqz v13, :cond_d

    .line 232
    :try_start_5
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 236
    :cond_d
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getParentAppId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v14, "pluginAppId"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :goto_3
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v14, "version"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppVersion()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v14, "publicId"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPublicId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v14, "sourceId"

    sget-object v15, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->secAppId:Ljava/lang/String;

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v14, "psd"

    invoke-static {v2, v7}, Lcom/alipay/mobile/nebula/log/H5Logger;->getPsd(Lcom/alipay/mobile/h5container/api/H5PageData;Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v14, "viewId"

    invoke-interface {v13, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v14, "refviewId"

    invoke-interface {v13, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string v14, "bizScenario"

    invoke-interface {v13, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v14, "token"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getToken()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string v14, "h5Token"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getH5Token()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v13, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string v14, "h5SessionToken"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v8, "H5Session"

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getH5SessionToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v8, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v13, "openAppId"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getOpenAppId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v8, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v13, "shopId"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getShopId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v8, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v13, "title"

    invoke-interface {v8, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v8, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string v13, "customParams"

    invoke-interface {v8, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v8, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v13, "webViewType"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getWebViewType()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v8, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string v13, "isTinyApp"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getIsTinyApp()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v8, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v13, "ucWebViewVersion"

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getUcVersion()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v8, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v13, "multiProcessMode"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getMultiProcessMode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getReleaseType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 260
    iget-object v8, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string v13, "log_release_type"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getReleaseType()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->getLogGroup()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    move-object v14, v13

    .line 264
    .local v14, "logGroup":Ljava/lang/String;
    move-object v13, v8

    .end local v14    # "logGroup":Ljava/lang/String;
    .local v13, "logGroup":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 265
    iget-object v8, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string v14, "logGroup"

    invoke-interface {v8, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_f
    invoke-virtual {v2, v3, v10}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStringExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object v14, v10

    .line 269
    .local v14, "isEntrance":Ljava/lang/String;
    move-object v10, v8

    .end local v14    # "isEntrance":Ljava/lang/String;
    .local v10, "isEntrance":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 270
    iget-object v8, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    invoke-interface {v8, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->isNebulaX()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 275
    iget-object v3, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string v8, "isNebulaX"

    const-string v14, "YES"

    invoke-interface {v3, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getCubeRenderType()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    .line 277
    .local v8, "cubeRenderType":Ljava/lang/String;
    move-object v8, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 278
    iget-object v3, v1, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string v14, "cubeRender"

    invoke-interface {v3, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 283
    .end local v0    # "isH5Activity":Z
    .end local v6    # "viewId":Ljava/lang/String;
    .end local v8    # "cubeRenderType":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "isEntrance":Ljava/lang/String;
    .end local v11    # "customParams":Ljava/lang/String;
    .end local v12    # "refViewID":Ljava/lang/String;
    .end local v13    # "logGroup":Ljava/lang/String;
    :cond_11
    goto :goto_4

    .line 281
    :catchall_0
    move-exception v0

    .line 282
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_4
    return-object v1
.end method

.method public getParam1Map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param1Map:Ljava/util/Map;

    return-object v0
.end method

.method public getParam2Map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param2Map:Ljava/util/Map;

    return-object v0
.end method

.method public getParam3Map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param3Map:Ljava/util/Map;

    return-object v0
.end method

.method public getParam4Map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param4Map:Ljava/util/Map;

    return-object v0
.end method

.method public getSeedId()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId:Ljava/lang/String;

    return-object v0
.end method

.method public param1()Lcom/alipay/mobile/nebula/log/H5LogData;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param1Map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param1Map:Ljava/util/Map;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param1Map:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    .line 69
    return-object p0
.end method

.method public param2()Lcom/alipay/mobile/nebula/log/H5LogData;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param2Map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param2Map:Ljava/util/Map;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param2Map:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    .line 77
    return-object p0
.end method

.method public param3()Lcom/alipay/mobile/nebula/log/H5LogData;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param3Map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param3Map:Ljava/util/Map;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param3Map:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    .line 85
    return-object p0
.end method

.method public param4()Lcom/alipay/mobile/nebula/log/H5LogData;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param4Map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param4Map:Ljava/util/Map;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param4Map:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    .line 93
    return-object p0
.end method

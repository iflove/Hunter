.class public Lcom/mpaas/tinyapi/city/view/CitySelectActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "CitySelectActivity.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/mpaas/tinyapi/city/view/CityDataAdapter;

.field private c:Lcom/mpaas/tinyapi/city/view/City;

.field private d:[Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcom/amap/api/location/AMapLocationClient;

.field private i:Ljava/lang/String;

.field private j:Landroid/content/BroadcastReceiver;

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 28

    .line 40
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    .line 49
    new-instance v1, Lcom/mpaas/tinyapi/city/view/City;

    invoke-direct {v1}, Lcom/mpaas/tinyapi/city/view/City;-><init>()V

    iput-object v1, v0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->c:Lcom/mpaas/tinyapi/city/view/City;

    .line 51
    const-string v2, "A"

    const-string v3, "B"

    const-string v4, "C"

    const-string v5, "D"

    const-string v6, "E"

    const-string v7, "F"

    const-string v8, "G"

    const-string v9, "H"

    const-string v10, "I"

    const-string v11, "J"

    const-string v12, "K"

    const-string v13, "L"

    const-string v14, "M"

    const-string v15, "N"

    const-string v16, "O"

    const-string v17, "P"

    const-string v18, "Q"

    const-string v19, "R"

    const-string v20, "S"

    const-string v21, "T"

    const-string v22, "U"

    const-string v23, "V"

    const-string v24, "W"

    const-string v25, "X"

    const-string v26, "Y"

    const-string v27, "Z"

    filled-new-array/range {v2 .. v27}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->d:[Ljava/lang/String;

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->e:Z

    .line 57
    iput-boolean v1, v0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->f:Z

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->g:Z

    .line 65
    new-instance v2, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$1;

    invoke-direct {v2, v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$1;-><init>(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)V

    iput-object v2, v0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->j:Landroid/content/BroadcastReceiver;

    .line 86
    iput v1, v0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->k:I

    return-void
.end method

.method static synthetic a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mpaas/tinyapi/city/view/CitySelectActivity;
    .param p1, "x1"    # I

    .line 40
    iput p1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->k:I

    return p1
.end method

.method static synthetic a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/City;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    .line 40
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->c:Lcom/mpaas/tinyapi/city/view/City;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 9

    const-string v0, "exception in closing streams"

    const-string v1, "CitySelectActivity"

    .line 297
    const/4 v2, 0x0

    .line 298
    .local v2, "iStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 300
    .local v3, "oStream":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "cities.json"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v5

    .line 301
    const/16 v5, 0x2000

    new-array v5, v5, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .local v5, "buffer":[B
    :goto_0
    :try_start_1
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "count":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 304
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 306
    .end local v5    # "buffer":[B
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    if-eqz v2, :cond_1

    .line 312
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 314
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 317
    goto :goto_1

    .line 315
    :catch_0
    move-exception v6

    .line 316
    invoke-static {v1, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_1
    return-object v4

    .line 307
    .end local v7    # "count":I
    :catch_1
    move-exception v6

    goto :goto_3

    :catch_2
    move-exception v5

    goto :goto_2

    .line 310
    :catchall_0
    move-exception v4

    goto :goto_5

    .line 307
    :goto_2
    move-object v5, v4

    .line 308
    .local v5, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v6, "exception in reading cities data"

    invoke-static {v1, v6}, Lcom/mpaas/mas/adapter/api/MPLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_2

    .line 312
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 314
    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 317
    goto :goto_4

    .line 315
    :catch_3
    move-exception v6

    .line 316
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .end local v5    # "e":Ljava/lang/Exception;
    nop

    .line 319
    :goto_4
    return-object v4

    .line 311
    :goto_5
    if-eqz v2, :cond_3

    .line 312
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 314
    :cond_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 317
    goto :goto_6

    .line 315
    :catch_4
    move-exception v5

    .line 316
    invoke-static {v1, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :goto_6
    throw v4
.end method

.method private a(Landroid/content/Intent;)Ljava/util/Map;
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mpaas/tinyapi/city/view/City;",
            ">;>;"
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "cities"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    move-object v2, v0

    .line 149
    .local v2, "s":Ljava/lang/String;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 150
    return-object v0

    .line 154
    :cond_1
    :try_start_0
    const-class v1, Lcom/mpaas/tinyapi/city/view/City;

    invoke-static {v2, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v0

    .line 156
    .local v3, "cities":Ljava/util/List;
    move-object v3, v1

    :try_start_1
    new-instance v4, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$3;

    invoke-direct {v4, p0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$3;-><init>(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)V

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v1, "result":Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v0

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mpaas/tinyapi/city/view/City;

    .line 177
    .local v5, "city":Lcom/mpaas/tinyapi/city/view/City;
    move-object v5, v6

    iget-object v6, v6, Lcom/mpaas/tinyapi/city/view/City;->pinyin:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/mpaas/tinyapi/city/view/City;->pinyin:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 180
    iget-object v6, v5, Lcom/mpaas/tinyapi/city/view/City;->pinyin:Ljava/lang/String;

    .line 181
    .local v6, "spell":Ljava/lang/String;
    const-string v7, "%c"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, "initial":Ljava/lang/String;
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 183
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .end local v3    # "cities":Ljava/util/List;
    :cond_3
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 186
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    nop

    .end local v5    # "city":Lcom/mpaas/tinyapi/city/view/City;
    .end local v6    # "spell":Ljava/lang/String;
    .end local v7    # "initial":Ljava/lang/String;
    goto :goto_1

    .line 188
    :cond_4
    return-object v1

    .line 189
    .end local v1    # "result":Ljava/util/Map;
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v3, v0

    :goto_2
    move-object v1, v3

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "CitySelectActivity"

    const-string v4, "Error parsing cities"

    invoke-static {v3, v4}, Lcom/mpaas/mas/adapter/api/MPLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private a(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONArray;Ljava/util/Map;)V
    .locals 11
    .param p1, "j"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "jHotCities"    # Lcom/alibaba/fastjson/JSONArray;
    .param p3, "customCities"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Lcom/alibaba/fastjson/JSONArray;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mpaas/tinyapi/city/view/City;",
            ">;>;)V"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v0, "letterList":Ljava/util/List;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v7, v1

    .line 222
    .local v7, "cities":Ljava/util/Map;
    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->d:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 223
    .local v5, "letter":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 224
    invoke-interface {p3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 225
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 229
    :cond_0
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 230
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v6, "cityList":Ljava/util/List;
    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    .line 233
    .local v8, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 234
    const-class v10, Lcom/mpaas/tinyapi/city/view/City;

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/fastjson/JSONArray;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mpaas/tinyapi/city/view/City;

    .line 235
    .local v10, "city":Lcom/mpaas/tinyapi/city/view/City;
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v10    # "city":Lcom/mpaas/tinyapi/city/view/City;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 237
    .end local v9    # "i":I
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v5    # "letter":Ljava/lang/String;
    .end local v6    # "cityList":Ljava/util/List;
    .end local v8    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 242
    :cond_3
    const/4 v1, 0x0

    .line 243
    .local v1, "hotCities":Ljava/util/List;
    iget-boolean v2, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->e:Z

    if-eqz v2, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 245
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 246
    const-class v4, Lcom/mpaas/tinyapi/city/view/City;

    invoke-virtual {p2, v2, v4}, Lcom/alibaba/fastjson/JSONArray;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mpaas/tinyapi/city/view/City;

    .line 247
    .local v4, "city":Lcom/mpaas/tinyapi/city/view/City;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v4    # "city":Lcom/mpaas/tinyapi/city/view/City;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 249
    .end local v2    # "i":I
    :cond_4
    invoke-static {}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->a()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/mpaas/commonbiz/R$string;->hot:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v8, v1

    goto :goto_4

    .line 251
    :cond_5
    move-object v8, v1

    .end local v1    # "hotCities":Ljava/util/List;
    .local v8, "hotCities":Ljava/util/List;
    :goto_4
    iget-boolean v1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->f:Z

    if-eqz v1, :cond_6

    .line 252
    invoke-static {}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->a()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mpaas/commonbiz/R$string;->current:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 254
    :cond_6
    new-instance v9, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;

    iget-boolean v1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->f:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->c:Lcom/mpaas/tinyapi/city/view/City;

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    move-object v3, v1

    move-object v1, v9

    move-object v2, p0

    move-object v4, v8

    move-object v5, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;-><init>(Landroid/content/Context;Lcom/mpaas/tinyapi/city/view/City;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    iput-object v9, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->b:Lcom/mpaas/tinyapi/city/view/CityDataAdapter;

    .line 255
    new-instance v1, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$4;

    invoke-direct {v1, p0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$4;-><init>(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)V

    invoke-virtual {v9, v1}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->a(Lcom/mpaas/tinyapi/city/view/CityDataAdapter$OnCitySelectedListener;)V

    .line 272
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 273
    .local v1, "newLetters":[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a([Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method private a(Lcom/mpaas/tinyapi/city/view/City;)V
    .locals 4
    .param p1, "city"    # Lcom/mpaas/tinyapi/city/view/City;

    .line 323
    iget-boolean v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->g:Z

    if-nez v0, :cond_0

    .line 324
    const-string v0, "CitySelectActivity"

    const-string v1, "Not firing located complete event"

    invoke-static {v0, v1}, Lcom/mpaas/mas/adapter/api/MPLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void

    .line 327
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "cityId":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    .line 329
    .local v2, "intent":Landroid/content/Intent;
    move-object v2, v1

    const-string v3, "com.mpaas.internal.location.complete"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v1, "id"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    iget-object v1, p1, Lcom/mpaas/tinyapi/city/view/City;->adcode:Ljava/lang/String;

    const-string v3, "adcode"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    iget-object v1, p1, Lcom/mpaas/tinyapi/city/view/City;->longitude:Ljava/lang/Double;

    const-string v3, "longitude"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 333
    iget-object v1, p1, Lcom/mpaas/tinyapi/city/view/City;->latitude:Ljava/lang/Double;

    const-string v3, "latitude"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 334
    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->i:Ljava/lang/String;

    const-string v3, "serviceId"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 337
    return-void
.end method

.method static synthetic a(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;Lcom/mpaas/tinyapi/city/view/City;)V
    .locals 0
    .param p0, "x0"    # Lcom/mpaas/tinyapi/city/view/CitySelectActivity;
    .param p1, "x1"    # Lcom/mpaas/tinyapi/city/view/City;

    .line 40
    invoke-direct {p0, p1}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/mpaas/tinyapi/city/view/City;)V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 2
    .param p1, "letters"    # [Ljava/lang/String;

    .line 285
    sget v0, Lcom/mpaas/commonbiz/R$id;->blade:I

    invoke-virtual {p0, v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mpaas/tinyapi/city/view/BladeView;

    const/4 v1, 0x0

    .line 286
    .local v1, "bladeView":Lcom/mpaas/tinyapi/city/view/BladeView;
    move-object v1, v0

    invoke-virtual {v0, p1}, Lcom/mpaas/tinyapi/city/view/BladeView;->setLetters([Ljava/lang/String;)V

    .line 287
    new-instance v0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$5;

    invoke-direct {v0, p0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$5;-><init>(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)V

    invoke-virtual {v1, v0}, Lcom/mpaas/tinyapi/city/view/BladeView;->setOnItemClickListener(Lcom/mpaas/tinyapi/city/view/BladeView$OnItemClickListener;)V

    .line 294
    return-void
.end method

.method private static b(Landroid/content/Intent;)Lcom/alibaba/fastjson/JSONArray;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 196
    const-string v0, "hotCities"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 197
    .local v2, "customHotCities":Ljava/lang/String;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 198
    return-object v1

    .line 200
    :cond_0
    const/4 v0, 0x0

    .line 202
    .local v0, "jHotCities":Lcom/alibaba/fastjson/JSONArray;
    :try_start_0
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 205
    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    const-string v1, "CitySelectActivity"

    const-string v3, "Error parsing hotCities from Intent"

    invoke-static {v1, v3}, Lcom/mpaas/mas/adapter/api/MPLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return-object v0
.end method

.method static synthetic b(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/CityDataAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    .line 40
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->b:Lcom/mpaas/tinyapi/city/view/CityDataAdapter;

    return-object v0
.end method

.method private b()V
    .locals 4

    .line 340
    const-class v0, Lcom/mpaas/tinyapi/ChooseCityProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mpaas/tinyapi/ChooseCityProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 341
    .local v2, "chooseCityProvider":Lcom/mpaas/tinyapi/ChooseCityProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Lcom/mpaas/tinyapi/ChooseCityProvider;->isNeedCustomLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    new-instance v0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$6;

    invoke-direct {v0, p0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$6;-><init>(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)V

    invoke-interface {v2, v0}, Lcom/mpaas/tinyapi/ChooseCityProvider;->fetchCurrentLocation(Lcom/mpaas/tinyapi/FetchCurrentLocationCallback;)V

    return-void

    .line 360
    :cond_0
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    .line 361
    .local v1, "option":Lcom/amap/api/location/AMapLocationClientOption;
    move-object v1, v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 362
    invoke-virtual {v1, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 363
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Battery_Saving:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    .line 364
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {v0, p0}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->h:Lcom/amap/api/location/AMapLocationClient;

    .line 365
    new-instance v3, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$7;

    invoke-direct {v3, p0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$7;-><init>(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)V

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 381
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->h:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    .line 383
    .end local v1    # "option":Lcom/amap/api/location/AMapLocationClientOption;
    return-void
.end method

.method static synthetic c(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    .line 40
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 210
    if-nez p1, :cond_0

    .line 211
    return-void

    .line 213
    :cond_0
    const-string v0, "showHotCities"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->e:Z

    .line 214
    const-string v0, "showLocatedCity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->f:Z

    .line 215
    const/4 v0, 0x0

    const-string v1, "setLocatedCity"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->g:Z

    .line 216
    return-void
.end method

.method static synthetic d(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    .line 40
    iget v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->k:I

    return v0
.end method

.method static synthetic e(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    .line 40
    invoke-direct {p0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->b()V

    return-void
.end method

.method static synthetic f(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    .line 40
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/amap/api/location/AMapLocationClient;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    .line 40
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->h:Lcom/amap/api/location/AMapLocationClient;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 278
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    .line 279
    new-instance v0, Lcom/mpaas/tinyapi/city/ChooseCityResponseModel;

    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mpaas/tinyapi/city/ChooseCityResponseModel;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 280
    .local v1, "response":Lcom/mpaas/tinyapi/city/ChooseCityResponseModel;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/mpaas/tinyapi/city/ChooseCityResponseModel;->b:Z

    .line 281
    invoke-static {}, Lcom/mpaas/tinyapi/city/ChooseCityProcessor;->a()Lcom/mpaas/tinyapi/city/ChooseCityProcessor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mpaas/tinyapi/city/ChooseCityProcessor;->a(Lcom/mpaas/tinyapi/city/ChooseCityResponseModel;)V

    .line 282
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 90
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    sget v0, Lcom/mpaas/commonbiz/R$layout;->activity_city_select:I

    invoke-virtual {p0, v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->setContentView(I)V

    .line 92
    sget v0, Lcom/mpaas/commonbiz/R$id;->list:I

    invoke-virtual {p0, v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a:Landroid/widget/ListView;

    .line 93
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->c:Lcom/mpaas/tinyapi/city/view/City;

    sget v1, Lcom/mpaas/commonbiz/R$string;->locate_in_progress:I

    invoke-virtual {p0, v1}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mpaas/tinyapi/city/view/City;->name:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$2;

    invoke-direct {v1, p0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$2;-><init>(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/4 v1, 0x0

    .line 113
    .local v1, "filter":Landroid/content/IntentFilter;
    move-object v1, v0

    const-string v2, "com.mpaas.internal.setLocatedCity"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 116
    invoke-virtual {p0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->c(Landroid/content/Intent;)V

    .line 119
    const-string v2, "serviceId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->i:Ljava/lang/String;

    .line 121
    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->b(Landroid/content/Intent;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 123
    .local v2, "jHotCities":Lcom/alibaba/fastjson/JSONArray;
    invoke-direct {p0, v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Landroid/content/Intent;)Ljava/util/Map;

    move-result-object v3

    .line 126
    .local v3, "customCities":Ljava/util/Map;
    const-class v4, Lcom/mpaas/tinyapi/ChooseCityProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mpaas/tinyapi/ChooseCityProvider;

    .line 127
    .local v4, "chooseCityProvider":Lcom/mpaas/tinyapi/ChooseCityProvider;
    const-string v5, ""

    .line 128
    .local v5, "strCities":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 129
    invoke-interface {v4}, Lcom/mpaas/tinyapi/ChooseCityProvider;->getDefaultCityJson()Ljava/lang/String;

    move-result-object v5

    .line 131
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 132
    invoke-direct {p0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a()Ljava/lang/String;

    .line 135
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 136
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 137
    .local v6, "j":Lcom/alibaba/fastjson/JSONObject;
    if-nez v2, :cond_2

    const-string v7, "hot"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 138
    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 140
    :cond_2
    invoke-direct {p0, v6, v2, v3}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONArray;Ljava/util/Map;)V

    .line 142
    .end local v6    # "j":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    iget-boolean v6, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->f:Z

    if-eqz v6, :cond_4

    .line 143
    invoke-direct {p0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->b()V

    .line 145
    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 387
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onDestroy()V

    .line 388
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->h:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 391
    :cond_0
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    return-void
.end method

.class public Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;
.super Ljava/lang/Object;
.source "ConfigureOperationImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperation;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "stringValue"    # Ljava/lang/String;
    .param p1, "delimiters"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 287
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v0, "operationTypeList":Ljava/util/List;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 294
    .end local v1    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_0
    return-object v0

    .line 295
    .end local v0    # "operationTypeList":Ljava/util/List;
    :catchall_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "string2List exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Conf_ConfigureOperation"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .end local v0    # "e":Ljava/lang/Throwable;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Map;)Z
    .locals 1
    .param p1, "configMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 208
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->mergeConfig(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearConfig()V
    .locals 3

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    return-void

    .line 274
    :catchall_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mConfigMap.clear() exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Conf_ConfigureOperation"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public equalsInt(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;I)Z
    .locals 1
    .param p1, "item"    # Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;
    .param p2, "value"    # I

    .line 233
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equalsLong(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;J)Z
    .locals 3
    .param p1, "item"    # Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;
    .param p2, "value"    # J

    .line 226
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z
    .locals 1
    .param p1, "item"    # Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;
    .param p2, "value"    # Ljava/lang/String;

    .line 219
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public getAllConfig()Ljava/util/Map;
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

    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)D
    .locals 2
    .param p1, "item"    # Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;

    .line 64
    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->getDoubleValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDoubleValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;D)D
    .locals 6
    .param p1, "item"    # Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;
    .param p2, "defaultValue"    # D

    .line 70
    move-wide v0, p2

    .line 71
    .local v0, "val":D
    iget-object v2, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 72
    .local v3, "value":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    :try_start_0
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v4

    .line 76
    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    .line 78
    :cond_0
    :goto_0
    return-wide v0
.end method

.method public getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I
    .locals 1
    .param p1, "item"    # Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;

    .line 28
    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getIntValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;I)I

    move-result v0

    return v0
.end method

.method public getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;I)I
    .locals 3
    .param p1, "item"    # Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;
    .param p2, "defaultValue"    # I

    .line 33
    move v0, p2

    .line 34
    .local v0, "val":I
    iget-object v1, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 35
    .local v2, "value":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 39
    goto :goto_0

    .line 38
    :catch_0
    move-exception v1

    .line 41
    :cond_0
    :goto_0
    return v0
.end method

.method public getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)J
    .locals 2
    .param p1, "item"    # Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;

    .line 46
    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;J)J
    .locals 6
    .param p1, "item"    # Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;
    .param p2, "defaultValue"    # J

    .line 51
    move-wide v0, p2

    .line 52
    .local v0, "val":J
    iget-object v2, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 53
    .local v3, "value":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v4

    .line 57
    goto :goto_0

    .line 56
    :catch_0
    move-exception v2

    .line 59
    :cond_0
    :goto_0
    return-wide v0
.end method

.method public getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;

    .line 83
    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 103
    .local v1, "value":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    return-object v1

    .line 106
    :cond_0
    return-object p2
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 326
    .local v1, "value":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    return-object v1

    .line 329
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getStringValueList(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "item"    # Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;
    .param p2, "delimiters"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->getStringValueList(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStringValueList(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "item"    # Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "delimiters"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 94
    .local v1, "stringValue":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    invoke-static {v1, p3}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isLoadedConfig()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mergeConfig(Ljava/util/Map;)Z
    .locals 5
    .param p1, "pTmpMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 251
    const/4 v0, 0x0

    const-string v1, "Conf_ConfigureOperation"

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 257
    .local v2, "tmpMap":Ljava/util/Map;
    iget-object v3, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    if-ne v3, v2, :cond_1

    .line 258
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    .line 261
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 262
    const/4 v0, 0x1

    return v0

    .line 263
    .end local v2    # "tmpMap":Ljava/util/Map;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 252
    :cond_2
    :goto_0
    const-string v2, "configMap is empty!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    return v0

    .line 264
    .local v2, "e":Ljava/lang/Throwable;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "update. Parse spdy config exception.  pTmpMap="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    .line 267
    .end local v2    # "e":Ljava/lang/Throwable;
    return v0
.end method

.method public parseObject(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p1, "configJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 308
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 310
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, v2

    .line 311
    .local v0, "mapConfig":Ljava/util/Map;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 313
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    nop

    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 315
    .end local v0    # "mapConfig":Ljava/util/Map;
    .end local v2    # "keys":Ljava/util/Iterator;
    :cond_0
    return-object v0

    .line 316
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catchall_0
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Lorg/apache/http/ParseException;

    invoke-direct {v2, p1}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, "parseException":Lorg/apache/http/ParseException;
    move-object v0, v2

    invoke-virtual {v2, v1}, Lorg/apache/http/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 319
    throw v0
.end method

.method public partialUpdateFromMapAndSave(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Ljava/util/Map;
    .param p3, "sharePrefName"    # Ljava/lang/String;
    .param p4, "sharedPrefKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 130
    const-string v0, "Conf_ConfigureOperation"

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {p1, p3, p4}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->getSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "origConfigStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Before PartialUpdate:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v3, "origConfigMap":Ljava/util/Map;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 140
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->parseObject(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    move-object v3, v4

    .line 143
    :cond_1
    invoke-interface {v3, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 145
    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a(Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 146
    return v1

    .line 149
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 150
    return v1

    .line 153
    :cond_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "finalSwitchStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "After Partial Merge:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {p1, p3, p4, v4}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->refreshSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    const/4 v0, 0x1

    return v0

    .line 157
    .end local v2    # "origConfigStr":Ljava/lang/String;
    .end local v3    # "origConfigMap":Ljava/util/Map;
    .end local v4    # "finalSwitchStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    .end local v2    # "e":Ljava/lang/Exception;
    return v1

    .line 131
    :cond_4
    :goto_0
    return v1
.end method

.method public setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V
    .locals 3
    .param p1, "item"    # Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;
    .param p2, "value"    # Ljava/lang/String;

    .line 238
    invoke-interface {p1, p2}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->setValue(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 241
    .local v0, "tmpMap":Ljava/util/Map;
    iget-object v1, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    if-ne v1, v0, :cond_0

    .line 242
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v1, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    return-void
.end method

.method public updateFromJsonStrAndSave(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "json"    # Ljava/lang/String;
    .param p3, "sharePrefName"    # Ljava/lang/String;
    .param p4, "sharedPrefKey"    # Ljava/lang/String;

    .line 166
    const-string v0, "Conf_ConfigureOperation"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const-string v2, "json value is empty!!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return v1

    .line 171
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->parseObject(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 173
    .local v2, "srcMap":Ljava/util/Map;
    invoke-static {p1, p3, p4, v2}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->mergeMapsharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 174
    .local v3, "targetMap":Ljava/util/Map;
    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a(Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    return v1

    .line 177
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 178
    return v1

    .line 180
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p3, p4, v4}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->refreshSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    const/4 v0, 0x1

    return v0

    .line 182
    .end local v2    # "srcMap":Ljava/util/Map;
    .end local v3    # "targetMap":Ljava/util/Map;
    :catchall_0
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .end local v2    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method public updateFromMapAndSave(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Ljava/util/Map;
    .param p3, "sharePrefName"    # Ljava/lang/String;
    .param p4, "sharedPrefKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a(Ljava/util/Map;)Z

    move-result v1

    move v2, v0

    .line 116
    .local v2, "upSuc":Z
    if-nez v1, :cond_1

    .line 117
    return v0

    .line 119
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p3, p4, v1}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->refreshSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    const/4 v0, 0x1

    return v0

    .line 121
    .end local v2    # "upSuc":Z
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Conf_ConfigureOperation"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .end local v1    # "e":Ljava/lang/Exception;
    return v0

    .line 113
    :cond_2
    :goto_0
    return v0
.end method

.method public updateFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharedPrefName"    # Ljava/lang/String;
    .param p3, "sharedPrefKey"    # Ljava/lang/String;

    const-string v0, "Conf_ConfigureOperation"

    .line 192
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->getSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 194
    .local v3, "configContent":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "No config at sharedPref. sharedPrefName=["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] sharedPerf=["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] !"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return v1

    .line 199
    :cond_0
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->parseObject(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a(Ljava/util/Map;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 200
    .end local v3    # "configContent":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

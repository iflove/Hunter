.class public Lcom/alipay/mobile/common/transport/utils/HttpSignUtil;
.super Ljava/lang/Object;
.source "HttpSignUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "externalAppKey"    # Ljava/lang/String;
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "ts"    # J

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 60
    .local v1, "signRawContentBuilder":Ljava/lang/StringBuilder;
    move-object v1, v0

    invoke-static {p3}, Lcom/alipay/mobile/common/transport/utils/StringUtils;->upperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-static {p2}, Lcom/alipay/mobile/common/transport/utils/HttpSignUtil;->buildUrlOfSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "signRawContent":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v0, v3}, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil;->signature(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Z)Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    move-result-object v2

    .line 66
    iget-object v2, v2, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->sign:Ljava/lang/String;

    .line 75
    .local v2, "sign":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[doSignHttpRequest] Raw content = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", sign = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HttpSignUtil"

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-object v2
.end method

.method public static final buildUrlOfSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "urlString"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 97
    .local v0, "url":Ljava/net/URL;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 101
    nop

    .line 103
    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "query":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 106
    .local v4, "path":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const-string v4, "/"

    .line 110
    :cond_0
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    return-object v4

    .line 115
    :cond_1
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 116
    .local v2, "params":Ljava/util/Map;
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, "&"

    invoke-direct {v5, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v3

    move-object v8, v7

    .line 117
    .local v5, "stringTokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    const-string v10, "#"

    const/4 v11, 0x1

    const-string v12, "="

    if-eqz v9, :cond_4

    .line 119
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 120
    .local v7, "kvPairString":Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v8, "kvPairArray":[Ljava/lang/String;
    move-object v8, v9

    array-length v9, v9

    const/4 v12, 0x0

    if-ne v9, v11, :cond_2

    .line 123
    aget-object v9, v8, v12

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    goto :goto_0

    .line 126
    :cond_2
    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 127
    aget-object v9, v8, v12

    aget-object v10, v8, v11

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    goto :goto_0

    .line 130
    .end local v7    # "kvPairString":Ljava/lang/String;
    .end local v8    # "kvPairArray":[Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 132
    .end local v5    # "stringTokenizer":Ljava/util/StringTokenizer;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .local v5, "urlOfSignStrBuilder":Ljava/lang/StringBuilder;
    move-object v5, v7

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 135
    .local v8, "paramEntry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 137
    .local v3, "val":Ljava/lang/String;
    move-object v3, v9

    if-eqz v9, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_5

    goto :goto_2

    .line 139
    :cond_5
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 140
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 138
    :cond_6
    :goto_2
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_7
    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .end local v3    # "val":Ljava/lang/String;
    .end local v8    # "paramEntry":Ljava/util/Map$Entry;
    goto :goto_1

    .line 145
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v11

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 98
    .end local v1    # "query":Ljava/lang/String;
    .end local v2    # "params":Ljava/util/Map;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "urlOfSignStrBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "HttpSignUtil"

    const-string v3, "[buildUrlOfSign] Illega url exception"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    const-string v2, "/"

    return-object v2
.end method

.method public static final signHttpRequest2Headers(Landroid/content/Context;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "httpUrlRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 25
    const-string v0, "HttpSignUtil"

    if-nez p1, :cond_0

    .line 26
    :try_start_0
    const-string v1, "[signHttpRequest2Headers] httpUrlRequest is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isNeedSign()Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    return-void

    .line 34
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getAppKeyFromMetaData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 35
    .local v2, "extAppkey":Ljava/lang/String;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-static {v1, v3, p0}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getAppkey(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, "appkey":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getAppId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "appId":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 43
    .local v8, "ts":J
    const-string v3, "AppId"

    invoke-virtual {p1, v3, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string/jumbo v3, "workspaceid"

    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getWorkspaceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v3, "x-mmtc-timestamp"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/alipay/mobile/common/transport/utils/HttpSignUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "signStr":Ljava/lang/String;
    const-string/jumbo v4, "x-mmtc-sign"

    invoke-virtual {p1, v4, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v1    # "appId":Ljava/lang/String;
    .end local v2    # "extAppkey":Ljava/lang/String;
    .end local v3    # "signStr":Ljava/lang/String;
    .end local v5    # "appkey":Ljava/lang/String;
    .end local v8    # "ts":J
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[signHttpRequest2Headers] Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    const-string v1, "[signHttpRequest2Headers] sign finished."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

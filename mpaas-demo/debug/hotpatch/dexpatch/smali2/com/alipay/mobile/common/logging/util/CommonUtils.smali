.class public Lcom/alipay/mobile/common/logging/util/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertHeadersMapToStrings(Ljava/util/Map;)[Ljava/lang/String;
    .locals 8
    .param p0, "headers"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 10
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 16
    .local v1, "headersStr":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 17
    .local v2, "index":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v0

    move v5, v2

    move-object v2, v4

    .end local v2    # "index":I
    .local v5, "index":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 19
    .local v0, "headerEntry":Ljava/util/Map$Entry;
    move-object v0, v6

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 20
    .local v2, "key":Ljava/lang/String;
    move-object v2, v6

    const-string v7, ""

    if-nez v6, :cond_1

    .line 21
    aput-object v7, v1, v5

    goto :goto_1

    .line 23
    :cond_1
    aput-object v2, v1, v5

    .line 27
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 28
    .local v4, "value":Ljava/lang/String;
    move-object v4, v6

    if-nez v6, :cond_2

    .line 29
    add-int/lit8 v6, v5, 0x1

    aput-object v7, v1, v6

    goto :goto_2

    .line 31
    :cond_2
    add-int/lit8 v6, v5, 0x1

    aput-object v4, v1, v6

    .line 35
    :goto_2
    nop

    .end local v0    # "headerEntry":Ljava/util/Map$Entry;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x2

    .line 36
    goto :goto_0

    .line 38
    :cond_3
    return-object v1

    .line 11
    .end local v1    # "headersStr":[Ljava/lang/String;
    .end local v5    # "index":I
    :cond_4
    :goto_3
    return-object v0
.end method

.method public static final convertHeadersStrings2Map([Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "headersStrings"    # [Ljava/lang/String;
    .param p1, "destMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    if-eqz p0, :cond_3

    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 49
    aget-object v2, p0, v0

    .line 50
    .local v2, "key":Ljava/lang/String;
    const-string v3, ""

    .line 51
    .local v3, "value":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    .line 52
    .local v1, "valueIndex":I
    move v1, v4

    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 53
    aget-object v3, p0, v1

    .line 55
    :cond_1
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .end local v1    # "valueIndex":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 57
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 44
    :cond_3
    :goto_1
    return-void
.end method

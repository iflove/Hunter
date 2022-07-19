.class public final Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;
.super Ljava/lang/Object;
.source "GwCookieCacheHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GwCookieCacheHelper"

.field private static a:Z

.field public static final cookieCacheMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->a:Z

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->cookieCacheMaps:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cookieStringToMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p0, "localCookie"    # Ljava/lang/String;
    .param p1, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 165
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "GwCookieCacheHelper"

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "[cookieStringToMap] localCookie is empty."

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void

    .line 170
    :cond_0
    if-nez p1, :cond_1

    .line 171
    const-string v0, "[cookieStringToMap] map is null."

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void

    .line 175
    :cond_1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v0, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "stringTokenizer":Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 176
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 178
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v3, "kvPairStr":Ljava/lang/String;
    move-object v3, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 180
    const-string v5, "[cookieStringToMap] kvPairStr is empty."

    invoke-static {v1, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    goto :goto_0

    .line 185
    :cond_2
    const-string v5, "="

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 186
    .local v4, "firstEqualSymbolIndex":I
    move v4, v5

    if-gez v5, :cond_3

    .line 187
    const-string v5, "[cookieStringToMap] Not find \'=\' symbol."

    invoke-static {v1, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v6, v4, 0x1

    .line 194
    .local v6, "valueStartIndex":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    .line 195
    .local v7, "subLenOfValue":I
    const-string v8, ""

    .line 196
    .local v8, "value":Ljava/lang/String;
    if-lez v7, :cond_4

    .line 197
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 200
    :cond_4
    invoke-interface {p1, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .end local v3    # "kvPairStr":Ljava/lang/String;
    .end local v4    # "firstEqualSymbolIndex":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "valueStartIndex":I
    .end local v7    # "subLenOfValue":I
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_0

    .line 202
    :cond_5
    return-void
.end method

.method public static final declared-synchronized getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "domain"    # Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;

    monitor-enter v0

    .line 133
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->cookieCacheMaps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 139
    :cond_1
    :try_start_1
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->toCookieString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 134
    :cond_2
    :goto_0
    :try_start_2
    const-string v1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 140
    :catchall_0
    move-exception v1

    .line 141
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "GwCookieCacheHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCookie ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .end local v1    # "ex":Ljava/lang/Throwable;
    const-string v1, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object v1

    .line 132
    .end local p0    # "domain":Ljava/lang/String;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final getCookieMapByDomain(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "domain"    # Ljava/lang/String;
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

    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "GwCookieCacheHelper"

    const-string v2, "[getCookieMapByDomain] domain is empty."

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-object v1

    .line 49
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->cookieCacheMaps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 50
    .local v1, "oldMap":Ljava/util/Map;
    move-object v1, v2

    if-eqz v2, :cond_1

    .line 51
    return-object v1

    .line 54
    :cond_1
    const-class v2, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;

    monitor-enter v2

    .line 55
    if-nez v1, :cond_2

    .line 56
    :try_start_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v1, v3

    .line 57
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_2
    monitor-exit v2

    .line 61
    return-object v1

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final getCookieWrapper(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "transportContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    if-nez p0, :cond_0

    goto/16 :goto_4

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 72
    .local v0, "isLoadLocalCookies":Z
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getTopDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "localTopDomain":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->COOKIE_CACHE_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v4, "T"

    .line 76
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->a:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 77
    :goto_1
    const/4 v4, 0x0

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    iget-byte v2, p2, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    if-ne v2, v3, :cond_4

    .line 80
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v4

    .line 81
    .local v3, "cacheCookie":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 83
    const-string v2, "GwCookieCacheHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[getCookieWrapper] Use old cache cookie. add cookie=["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]. url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object v3

    .line 86
    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 91
    .end local v3    # "cacheCookie":Ljava/lang/String;
    :cond_4
    move-object v3, v4

    :goto_2
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 92
    const-string v2, "GwCookieCacheHelper"

    const-string v3, "[getCookieWrapper] Another process is not operating a cookie."

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, ""

    return-object v2

    .line 91
    :cond_5
    move-object v2, v3

    .line 97
    .local v2, "localCookie":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 99
    const-class v3, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;

    monitor-enter v3

    .line 101
    :try_start_0
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v4, "cacheCookie":Ljava/lang/String;
    move-object v4, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 103
    const-string v5, "GwCookieCacheHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[getCookieWrapper] Use new cache cookie. add cookie=["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]. url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    monitor-exit v3

    return-object v4

    .line 108
    :cond_6
    invoke-static {p1, p0}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->getCookie(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 109
    const-string v5, "GwCookieCacheHelper"

    const-string v6, "[getCookieWrapper] get from CookieManager complete"

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 112
    const-string v5, ""

    monitor-exit v3

    return-object v5

    .line 116
    :cond_7
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->getCookieMapByDomain(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 117
    .local v5, "cookieMap":Ljava/util/Map;
    invoke-static {v2, v5}, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->cookieStringToMap(Ljava/lang/String;Ljava/util/Map;)V

    .line 118
    const-string v6, "GwCookieCacheHelper"

    const-string v7, "[getCookieWrapper] Cookie Cache load finish."

    invoke-static {v6, v7}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v4    # "cacheCookie":Ljava/lang/String;
    .end local v5    # "cookieMap":Ljava/util/Map;
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 121
    :cond_8
    invoke-static {p1, p0}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->getCookie(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 122
    move-object v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 123
    const-string v3, ""

    return-object v3

    .line 127
    :cond_9
    :goto_3
    const-string v3, "GwCookieCacheHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[getCookieWrapper] Use cookie manager. add cookie=["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] . url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-object v2

    .line 67
    .end local v0    # "isLoadLocalCookies":Z
    .end local v1    # "localTopDomain":Ljava/lang/String;
    .end local v2    # "localCookie":Ljava/lang/String;
    :cond_a
    :goto_4
    const-string v0, ""

    return-object v0
.end method

.method public static final declared-synchronized removeAllCookie()V
    .locals 5

    const-class v0, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;

    monitor-enter v0

    .line 157
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->cookieCacheMaps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit v0

    return-void

    .line 158
    :catchall_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "GwCookieCacheHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "removeAllCookie ex: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    .end local v1    # "e":Ljava/lang/Throwable;
    monitor-exit v0

    return-void

    .line 156
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized setCookies(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;

    monitor-enter v0

    .line 32
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->getCookieMapByDomain(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    .line 36
    .local v2, "oldMap":Ljava/util/Map;
    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .end local v2    # "oldMap":Ljava/util/Map;
    monitor-exit v0

    return-void

    .line 33
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "GwCookieCacheHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setCookies ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    .end local v1    # "ex":Ljava/lang/Throwable;
    monitor-exit v0

    return-void

    .line 31
    .end local p0    # "domain":Ljava/lang/String;
    .end local p1    # "map":Ljava/util/Map;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setUseCookieCache(Z)V
    .locals 0
    .param p0, "use"    # Z

    .line 205
    sput-boolean p0, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->a:Z

    .line 206
    return-void
.end method

.method public static final toCookieString(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p0, "cookieMap"    # Ljava/util/Map;
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

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v0, "cookieString":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 149
    .local v2, "cookieEntry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .end local v2    # "cookieEntry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

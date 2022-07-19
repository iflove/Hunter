.class public Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;
.super Ljava/lang/Object;
.source "StrategyItemParser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HTTP_DNS_StrategyItemParser"

.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ZLcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;
    .locals 5
    .param p0, "ipListOnly"    # Z
    .param p1, "jsonResult"    # Lcom/alibaba/fastjson/JSONObject;

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "confStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 139
    .local v1, "configVersion":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 140
    const-string v2, "conf"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    .line 141
    .local v3, "confObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 142
    const-string v2, "android_network_core"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v2, "configVersion"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    move-object v1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->putConfigVersion(Ljava/lang/String;)V

    .line 148
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ANC Config Str: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,configVersion: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "HTTP_DNS_StrategyItemParser"

    invoke-static {v4, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v3    # "confObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    return-object v0
.end method

.method private static a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p0, "jsonResult"    # Lcom/alibaba/fastjson/JSONObject;

    const-string v0, "HTTP_DNS_StrategyItemParser"

    .line 107
    :try_start_0
    const-string/jumbo v1, "oversea"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    .line 108
    .local v2, "oversea":Ljava/lang/Boolean;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->a:Z

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mOversea=["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->a:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-boolean v1, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->a:Z

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->setOversea(Z)V

    .line 114
    new-instance v1, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser$1;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser$1;-><init>()V

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeIO(Ljava/lang/Runnable;)V

    return-void

    .line 120
    :cond_0
    const/4 v1, 0x0

    .line 121
    sput-boolean v1, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->a:Z

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->setOversea(Z)V

    .line 122
    new-instance v1, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser$2;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser$2;-><init>()V

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeIO(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v2    # "oversea":Ljava/lang/Boolean;
    return-void

    .line 129
    :catchall_0
    move-exception v1

    .line 130
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(Ljava/util/Map;JLcom/alibaba/fastjson/JSONArray;I)V
    .locals 19
    .param p0, "ipListResult"    # Ljava/util/Map;
    .param p1, "tim"    # J
    .param p3, "dnsJSONArr"    # Lcom/alibaba/fastjson/JSONArray;
    .param p4, "ttd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;J",
            "Lcom/alibaba/fastjson/JSONArray;",
            "I)V"
        }
    .end annotation

    .line 162
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v7, v4

    move-object v8, v7

    move-wide v9, v5

    move-object v5, v8

    move-object v6, v5

    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v11

    if-ge v3, v11, :cond_4

    .line 164
    new-instance v11, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-direct {v11}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;-><init>()V

    .line 165
    .local v11, "tempdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getNetworkType()I

    move-result v12

    .line 166
    .local v12, "netType":I
    invoke-virtual {v11, v12}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setNetType(I)V

    .line 168
    move-object/from16 v13, p3

    invoke-virtual {v13, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v14

    .line 169
    .local v4, "dns":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v14

    const-string v15, "domain"

    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 171
    .local v14, "domain":Ljava/lang/String;
    const-string/jumbo v15, "ttl"

    invoke-virtual {v4, v15}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 173
    .local v9, "ttl":J
    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    add-long v9, v15, v1

    .line 174
    invoke-virtual {v11, v9, v10}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTtl(J)V

    .line 175
    invoke-virtual {v11, v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTime(J)V

    .line 176
    move/from16 v15, p4

    invoke-virtual {v11, v15}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTtd(I)V

    .line 179
    const-string v1, "cname"

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v5

    .line 180
    .local v2, "cname":Ljava/lang/String;
    move-object v5, v1

    .end local v2    # "cname":Ljava/lang/String;
    .local v5, "cname":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    invoke-virtual {v11, v5}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setCname(Ljava/lang/String;)V

    .line 182
    invoke-interface {v0, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 185
    :cond_0
    const-string v1, "ips"

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    move-object v2, v6

    .line 186
    .local v2, "ipsJSONArr":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 190
    invoke-static {v11, v2}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->a(Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;Lcom/alibaba/fastjson/JSONArray;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    invoke-interface {v0, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "ipsv6"

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    move-object v6, v7

    .line 197
    .local v6, "ipsv6JSONArr":Lcom/alibaba/fastjson/JSONArray;
    move-object v6, v1

    if-eqz v1, :cond_2

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    invoke-static {v6}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->a(Lcom/alibaba/fastjson/JSONArray;)[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    move-result-object v1

    move-object v7, v8

    .line 202
    .local v7, "ipv6Entries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    move-object v7, v1

    if-eqz v1, :cond_1

    array-length v1, v7

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {v11}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIpEntries()[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    move-result-object v1

    .line 206
    .local v1, "ipv4Entries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    invoke-static {v7, v1}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->a([Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;)[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    move-result-object v8

    .line 208
    .local v8, "mergedEntries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    invoke-virtual {v11, v8}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIpEntries([Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;)V

    .line 209
    invoke-interface {v0, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .end local v1    # "ipv4Entries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    .end local v2    # "ipsJSONArr":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "dns":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "cname":Ljava/lang/String;
    .end local v6    # "ipsv6JSONArr":Lcom/alibaba/fastjson/JSONArray;
    .end local v7    # "ipv6Entries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    .end local v8    # "mergedEntries":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    .end local v9    # "ttl":J
    .end local v11    # "tempdnsIP":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .end local v12    # "netType":I
    .end local v14    # "domain":Ljava/lang/String;
    :cond_1
    move-object v8, v7

    :cond_2
    move-object v7, v6

    :cond_3
    move-object v6, v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v1, p1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v13, p3

    move/from16 v15, p4

    .line 212
    .end local v3    # "i":I
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;Lcom/alibaba/fastjson/JSONArray;)Z
    .locals 9
    .param p0, "tempdnsIP"    # Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .param p1, "ipsJSONArr"    # Lcom/alibaba/fastjson/JSONArray;

    .line 222
    const-string v0, ""

    .line 223
    .local v0, "ip":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    .local v1, "ipEntryList":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "j":I
    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 226
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 229
    .local v3, "tmpJsonIp":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v5

    const-string v6, "ip"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, "tmpIp":Ljava/lang/String;
    const-string/jumbo v6, "port"

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v6

    .line 232
    .local v6, "tmpPort":I
    new-instance v7, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    sget v8, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->IP_TYPE_V4:I

    invoke-direct {v7, v5, v8, v6}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;-><init>(Ljava/lang/String;II)V

    .line 234
    .local v4, "ipEntry":Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    move-object v4, v7

    iget-object v7, v7, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->ip:Ljava/lang/String;

    invoke-static {v7}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 237
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 239
    iget-object v0, v4, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->ip:Ljava/lang/String;

    .line 225
    .end local v3    # "tmpJsonIp":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "ipEntry":Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    .end local v5    # "tmpIp":Ljava/lang/String;
    .end local v6    # "tmpPort":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v2    # "j":I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    const/4 v2, 0x0

    return v2

    .line 246
    :cond_2
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIp(Ljava/lang/String;)V

    .line 247
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIpEntries([Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;)V

    .line 248
    const/4 v2, 0x1

    return v2
.end method

.method private static a(Lcom/alibaba/fastjson/JSONArray;)[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    .locals 8
    .param p0, "ipsv6JSONArr"    # Lcom/alibaba/fastjson/JSONArray;

    .line 254
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    .local v1, "ipv6EntryList":Ljava/util/List;
    const/4 v2, 0x0

    move-object v3, v0

    .local v2, "j":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 256
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 259
    .local v3, "tmpJsonIp":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v4

    const-string v5, "ip"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "tmpIp":Ljava/lang/String;
    const-string/jumbo v5, "port"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    .line 262
    .local v5, "tmpPort":I
    new-instance v6, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    sget v7, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->IP_TYPE_V6:I

    invoke-direct {v6, v4, v7, v5}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;-><init>(Ljava/lang/String;II)V

    .line 268
    .local v6, "ipv6Entry":Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    nop

    .end local v3    # "tmpJsonIp":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "tmpIp":Ljava/lang/String;
    .end local v5    # "tmpPort":I
    .end local v6    # "ipv6Entry":Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v2    # "j":I
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 271
    .end local v1    # "ipv6EntryList":Ljava/util/List;
    :catchall_0
    move-exception v1

    .line 272
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getHttpdnsIPEntryV6 ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HTTP_DNS_StrategyItemParser"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-object v0
.end method

.method private static a([Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;)[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    .locals 8
    .param p0, "arrayV6"    # [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    .param p1, "arrayV4"    # [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    .line 279
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    .line 280
    .local v0, "mergeredArray":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    array-length v1, p0

    array-length v2, p1

    if-gt v1, v2, :cond_0

    array-length v1, p0

    goto :goto_0

    :cond_0
    array-length v1, p1

    .line 281
    .local v1, "min":I
    :goto_0
    array-length v2, p0

    array-length v3, p1

    if-lt v2, v3, :cond_1

    array-length v2, p0

    goto :goto_1

    :cond_1
    array-length v2, p1

    .line 282
    .local v2, "max":I
    :goto_1
    array-length v3, p0

    array-length v4, p1

    if-lt v3, v4, :cond_2

    move-object v3, p0

    goto :goto_2

    :cond_2
    move-object v3, p1

    .line 283
    .local v3, "longArray":[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    :goto_2
    const/4 v4, 0x0

    .line 284
    .local v4, "j":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v1, :cond_3

    .line 286
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "j":I
    .local v6, "j":I
    aget-object v7, p0, v5

    aput-object v7, v0, v4

    .line 287
    add-int/lit8 v4, v6, 0x1

    .end local v6    # "j":I
    .restart local v4    # "j":I
    aget-object v7, p1, v5

    aput-object v7, v0, v6

    .line 284
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 289
    .end local v5    # "i":I
    :cond_3
    move v5, v1

    .local v5, "k":I
    :goto_4
    if-ge v5, v2, :cond_4

    .line 291
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "j":I
    .restart local v6    # "j":I
    aget-object v7, v3, v5

    aput-object v7, v0, v4

    .line 289
    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_4

    .line 293
    .end local v5    # "k":I
    .end local v6    # "j":I
    .restart local v4    # "j":I
    :cond_4
    return-object v0
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 22
    sget-boolean v0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->a:Z

    return v0
.end method

.method public static generateStrategyReq(Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;)Ljava/lang/String;
    .locals 5
    .param p0, "strategyReq"    # Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;

    .line 33
    const/4 v0, 0x0

    const-string v1, "HTTP_DNS_StrategyItemParser"

    if-nez p0, :cond_0

    .line 34
    const-string/jumbo v2, "request \u4e3anull"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-object v0

    .line 39
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "request":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8bf7\u6c42\u4f53: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-object v2

    .line 42
    .end local v2    # "request":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 43
    .local v2, "e":Lcom/alibaba/fastjson/JSONException;
    const-string v3, "JSONException"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .end local v2    # "e":Lcom/alibaba/fastjson/JSONException;
    return-object v0
.end method

.method public static isOversea()Z
    .locals 1

    .line 28
    sget-boolean v0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->a:Z

    return v0
.end method

.method public static parseStrategyContent(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyResponse;
    .locals 1
    .param p0, "result"    # Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->parseStrategyContent(Ljava/lang/String;Z)Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseStrategyContent(Ljava/lang/String;Z)Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyResponse;
    .locals 18
    .param p0, "result"    # Ljava/lang/String;
    .param p1, "ipListOnly"    # Z

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HTTP_DNS_StrategyItemParser"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v11, v0

    .line 60
    .local v11, "ipListResult":Ljava/util/Map;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 63
    .local v12, "tim":J
    const/4 v14, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v3, v14

    .line 64
    .local v3, "jsonResult":Lcom/alibaba/fastjson/JSONObject;
    move-object v15, v0

    .end local v3    # "jsonResult":Lcom/alibaba/fastjson/JSONObject;
    .local v15, "jsonResult":Lcom/alibaba/fastjson/JSONObject;
    if-nez v0, :cond_0

    .line 65
    const-string v0, "jsonResult is null"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-object v14

    .line 69
    :cond_0
    const-string v0, "code"

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 72
    .local v4, "code":J
    const-string v0, "clientIp"

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 75
    .local v8, "clientIp":Ljava/lang/String;
    invoke-static {v15}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->a(Lcom/alibaba/fastjson/JSONObject;)V

    .line 78
    const-string/jumbo v0, "ttd"

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    .line 79
    .local v3, "ttd":I
    move v3, v0

    if-gtz v0, :cond_1

    .line 80
    const/4 v3, 0x3

    move v0, v3

    goto :goto_0

    .line 79
    :cond_1
    move v0, v3

    .line 83
    .end local v3    # "ttd":I
    .local v0, "ttd":I
    :goto_0
    const-string v3, "dns"

    invoke-virtual {v15, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    move-object v6, v14

    .line 86
    .local v6, "dnsJSONArr":Lcom/alibaba/fastjson/JSONArray;
    move-object v10, v3

    .end local v6    # "dnsJSONArr":Lcom/alibaba/fastjson/JSONArray;
    .local v10, "dnsJSONArr":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v3, :cond_3

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v17, v10

    goto :goto_1

    .line 90
    :cond_2
    invoke-static {v11, v12, v13, v10, v0}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->a(Ljava/util/Map;JLcom/alibaba/fastjson/JSONArray;I)V

    .line 93
    move/from16 v9, p1

    invoke-static {v9, v15}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->a(ZLcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "confStr":Ljava/lang/String;
    new-instance v16, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyResponse;

    sget-boolean v17, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyItemParser;->a:Z

    move-object/from16 v3, v16

    move-object v6, v11

    move/from16 v9, v17

    move-object/from16 v17, v10

    .end local v10    # "dnsJSONArr":Lcom/alibaba/fastjson/JSONArray;
    .local v17, "dnsJSONArr":Lcom/alibaba/fastjson/JSONArray;
    move v10, v0

    invoke-direct/range {v3 .. v10}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyResponse;-><init>(JLjava/util/Map;Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    return-object v16

    .line 86
    .end local v7    # "confStr":Ljava/lang/String;
    .end local v17    # "dnsJSONArr":Lcom/alibaba/fastjson/JSONArray;
    .restart local v10    # "dnsJSONArr":Lcom/alibaba/fastjson/JSONArray;
    :cond_3
    move-object/from16 v17, v10

    .line 87
    .end local v10    # "dnsJSONArr":Lcom/alibaba/fastjson/JSONArray;
    .restart local v17    # "dnsJSONArr":Lcom/alibaba/fastjson/JSONArray;
    :goto_1
    return-object v14

    .line 98
    .end local v0    # "ttd":I
    .end local v4    # "code":J
    .end local v8    # "clientIp":Ljava/lang/String;
    .end local v15    # "jsonResult":Lcom/alibaba/fastjson/JSONObject;
    .end local v17    # "dnsJSONArr":Lcom/alibaba/fastjson/JSONArray;
    :catchall_0
    move-exception v0

    .line 99
    .local v0, "ex":Ljava/lang/Throwable;
    const-string/jumbo v3, "parseStrategyContent"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    return-object v14
.end method

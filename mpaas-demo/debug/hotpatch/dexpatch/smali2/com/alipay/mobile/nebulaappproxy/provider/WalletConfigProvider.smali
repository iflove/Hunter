.class public Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;
.super Ljava/lang/Object;
.source "WalletConfigProvider.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ConfigProvider"

.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Boolean;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->a:Ljava/util/Map;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->b:Ljava/lang/Boolean;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->c:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->d:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .line 22
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->d:Ljava/util/Map;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 201
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->getNewDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "domainSuffix":Ljava/lang/String;
    const-string v1, "h5_LocationDialogPermitWhiteList"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "regexArray":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->isSomeDomainInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .line 22
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->c:Ljava/util/Map;

    return-object v0
.end method

.method private c()V
    .locals 2

    .line 242
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    const-string v0, "h5_enableConfigCache"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->b:Ljava/lang/Boolean;

    .line 246
    return-void
.end method


# virtual methods
.method public clearProcessCache()V
    .locals 2

    .line 183
    const-string v0, "H5ConfigProvider"

    const-string v1, "clearProcessCache"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 187
    :cond_0
    return-void
.end method

.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "configName"    # Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5ConfigServiceWrap;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "H5ConfigProvider"

    .line 102
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->c()V

    .line 103
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONArray;

    const/4 v2, 0x0

    move-object v3, v2

    .line 109
    .local v3, "value":Lcom/alibaba/fastjson/JSONArray;
    move-object v3, v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 110
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 111
    move-object v3, v1

    if-nez v1, :cond_0

    .line 112
    return-object v2

    .line 114
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;Ljava/lang/String;)V

    .line 133
    .local v1, "observer":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;->getInstance()Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;->observe(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)V

    .line 134
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->e:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-object v3

    .line 138
    .end local v1    # "observer":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getConfigJSONArray "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    return-object v3

    .line 141
    .end local v3    # "value":Lcom/alibaba/fastjson/JSONArray;
    :catchall_0
    move-exception v1

    .line 142
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "getConfigJSONArray with cache bomb "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    return-object v0

    .line 146
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "H5ConfigProvider"

    .line 50
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->c()V

    .line 51
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, 0x0

    move-object v3, v2

    .line 56
    .local v3, "value":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 57
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 58
    move-object v3, v1

    if-nez v1, :cond_0

    .line 59
    return-object v2

    .line 61
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;Ljava/lang/String;)V

    .line 80
    .local v1, "observer":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;->getInstance()Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;->observe(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)V

    .line 81
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->e:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-object v3

    .line 85
    .end local v1    # "observer":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getConfigJSONObject "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    return-object v3

    .line 88
    .end local v3    # "value":Lcom/alibaba/fastjson/JSONObject;
    :catchall_0
    move-exception v1

    .line 89
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "getConfigJSONObject with cache bomb "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0

    .line 93
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    .line 155
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "value":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;->getInstance()Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/api/config/NebulaAppConfigCenter;->observe(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)V

    .line 157
    return-object v0
.end method

.method public getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "H5ConfigProvider"

    .line 163
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    .local v2, "value":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getConfig from configCache "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-object v2

    .line 168
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5ConfigServiceWrap;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    .line 169
    .local v3, "value":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 172
    :cond_1
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->a:Ljava/util/Map;

    const-string v4, ""

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :goto_0
    return-object v3

    .line 175
    .end local v3    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 176
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .end local v2    # "throwable":Ljava/lang/Throwable;
    return-object v1
.end method

.method public isAliDomains(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 208
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->getNewDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "domainSuffix":Ljava/lang/String;
    const-string v1, "h5_AliWhiteList"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "regexArray":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->isSomeDomainInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public isAlipayDomains(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 222
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->getNewDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "domainSuffix":Ljava/lang/String;
    const-string v1, "h5_AlipayWhiteList"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "regexArray":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->isSomeDomainInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public isPartnerDomains(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 215
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->getNewDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "domainSuffix":Ljava/lang/String;
    const-string v1, "h5_PartnerWhiteList"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "regexArray":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->isSomeDomainInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public isRpcDomains(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 236
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->getNewDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "domainSuffix":Ljava/lang/String;
    const-string v1, "h5_rpcWhiteList"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "regexArray":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->isSomeDomainInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public isSeriousAliDomains(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 229
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->getNewDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "domainSuffix":Ljava/lang/String;
    const-string v1, "h5_SeriousAliWhiteList"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "regexArray":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->isSomeDomainInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public permitLocation(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 197
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public putConfigCache(Ljava/util/Map;)V
    .locals 1
    .param p1, "map"    # Ljava/util/Map;

    .line 191
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 192
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletConfigProvider;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 193
    return-void
.end method

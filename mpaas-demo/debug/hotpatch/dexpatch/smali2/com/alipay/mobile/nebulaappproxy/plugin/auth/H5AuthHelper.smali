.class public Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthHelper;
.super Ljava/lang/Object;
.source "H5AuthHelper.java"


# static fields
.field public static final DOMAIN_TYPE_ALIBABA:Ljava/lang/String; = "alibabaDomains"

.field public static final DOMAIN_TYPE_INVALID:Ljava/lang/String; = "INVALID_DOMAIN"

.field public static final DOMAIN_TYPE_TAOBAO:Ljava/lang/String; = "taobaoDomains"

.field public static final DOMAIN_TYPE_WEIBO:Ljava/lang/String; = "weiboDomains"

.field public static final DOMAIN_TYPE_ZMXY:Ljava/lang/String; = "zmxyDomains"

.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    const-string/jumbo v0, "taobao.com"

    const-string/jumbo v1, "tmall.com"

    const-string/jumbo v2, "tmall.hk"

    const-string v3, "etao.com"

    const-string v4, "hitao.com"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthHelper;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLoginFlag()V
    .locals 6

    .line 83
    const/4 v0, 0x0

    .local v0, "clearConfig":Ljava/lang/String;
    const-string v1, "h5_ssoLoginNeedClearState"

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5ConfigServiceWrap;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 88
    .local v2, "jaConfig":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 89
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 90
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "domainType":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clearLoginFlag "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "H5AuthHelper"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->setFlag(Ljava/lang/String;Z)V

    .line 89
    .end local v3    # "domainType":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "index":I
    :cond_1
    return-void
.end method

.method public static isTaobaoDomains(Ljava/lang/String;)Z
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getOnlineHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 100
    .local v2, "domainSuffix":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_0
    const-string v0, "h5_ssoLogin"

    const-string/jumbo v3, "taobaoDomains"

    const-string v4, "((.*\\\\.)?(taobao|tmall|etao|hitao)\\\\.com)|((.*\\\\.)?tmall\\\\.hk)"

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5ConfigServiceWrap;->getConfigVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 106
    .local v3, "taobaoDomainRegex":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 108
    .local v1, "pattern":Ljava/util/regex/Pattern;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0

    .line 113
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5AuthHelper;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->isUrlInDomainArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVirtualDomain(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # Landroid/os/Bundle;

    .line 43
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "host":Ljava/lang/String;
    const-string/jumbo v1, "onlineHost"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "installHost":Ljava/lang/String;
    const-string/jumbo v2, "mapHost"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    nop

    .line 46
    return v3
.end method

.method public static parseDomainType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .line 51
    const-string v0, "INVALID_DOMAIN"

    .line 52
    .local v0, "domainType":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getOnlineHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 53
    .local v3, "domainSuffix":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    return-object v0

    .line 56
    :cond_0
    const-string v1, "h5_ssoLogin"

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5ConfigServiceWrap;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    move-object v4, v2

    .line 58
    .local v4, "joDomains":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v1

    if-nez v1, :cond_1

    .line 59
    const-string/jumbo v1, "{\"taobaoDomains\":\"((.*\\\\.)?(taobao|tmall|etao|hitao)\\\\.com)|((.*\\\\.)?tmall\\\\.hk)\",\"laiwangDomains\":\"((.*\\\\.)?laiwang\\\\.com)\",\"alibabaDomains\":\"((.*\\\\.)?1688\\\\.com)\"}"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 64
    :cond_1
    if-nez v4, :cond_2

    .line 65
    return-object v0

    .line 67
    :cond_2
    const-string/jumbo v1, "zmxyDomains"

    const-string v5, "((.*\\.)?zhimaxy\\.net)|((.*\\.)?zmxy\\.com.cn)|((.*\\.)?alipaydev\\.com)"

    invoke-virtual {v4, v1, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->initFlag(Ljava/util/Set;)V

    .line 70
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 71
    .local v5, "domain":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v2, "domainRegex":Ljava/lang/String;
    move-object v2, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 73
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 74
    move-object v0, v5

    .line 75
    goto :goto_1

    .line 78
    .end local v2    # "domainRegex":Ljava/lang/String;
    .end local v5    # "domain":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 79
    :cond_4
    :goto_1
    return-object v0
.end method

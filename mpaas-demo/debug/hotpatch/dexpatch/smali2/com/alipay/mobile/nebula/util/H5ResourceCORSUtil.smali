.class public Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;
.super Ljava/lang/Object;
.source "H5ResourceCORSUtil.java"


# static fields
.field private static final sWhiteListHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->sWhiteListHosts:Ljava/util/List;

    .line 23
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->initConfig()V

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 18
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->applyConfig(Ljava/lang/String;)V

    return-void
.end method

.method private static applyConfig(Ljava/lang/String;)V
    .locals 7
    .param p0, "configText"    # Ljava/lang/String;

    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    return-void

    .line 48
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 49
    .local v2, "array":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 50
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->sWhiteListHosts:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 55
    :try_start_2
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 56
    .local v1, "pattern":Ljava/util/regex/Pattern;
    move-object v1, v5

    if-eqz v5, :cond_1

    .line 57
    sget-object v5, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->sWhiteListHosts:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    :cond_1
    goto :goto_1

    .line 59
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/util/regex/PatternSyntaxException;
    :try_start_3
    const-string v5, "H5ResourceCORSUtil"

    const-string/jumbo v6, "pattern error"

    invoke-static {v5, v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .end local v1    # "e":Ljava/util/regex/PatternSyntaxException;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "configText":Ljava/lang/String;
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 68
    .end local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    .restart local p0    # "configText":Ljava/lang/String;
    :cond_3
    return-void

    .line 66
    :catchall_1
    move-exception v0

    .line 67
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "H5ResourceCORSUtil"

    const-string/jumbo v2, "parse config error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public static getCORSUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "pageUrl"    # Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    .local v1, "uri":Landroid/net/Uri;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "result":Ljava/lang/String;
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    move-object v4, v0

    .line 103
    .local v4, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v4, v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "true"

    const-string v5, "h5_getCORSUrlWithoutPort"

    invoke-interface {v4, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    return-object v2

    .line 106
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    .line 109
    :cond_1
    return-object v2

    .line 110
    .end local v2    # "result":Ljava/lang/String;
    .end local v4    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v1, v0

    .line 111
    .local v1, "t":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method private static initConfig()V
    .locals 3

    .line 27
    const/4 v0, 0x0

    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 28
    move-object v0, v1

    if-nez v1, :cond_0

    .line 29
    return-void

    .line 31
    :cond_0
    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil$1;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil$1;-><init>()V

    const-string v2, "h5_CORSWhiteList"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->applyConfig(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static needAddHeader(Ljava/lang/String;)Z
    .locals 6
    .param p0, "resourceUrl"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->sWhiteListHosts:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 76
    monitor-exit v2

    return v0

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v4, v1

    .line 80
    .local v4, "uri":Landroid/net/Uri;
    move-object v4, v3

    if-eqz v3, :cond_2

    .line 81
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v1, "host":Ljava/lang/String;
    move-object v1, v3

    if-eqz v3, :cond_2

    .line 83
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/regex/Pattern;

    .line 84
    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 85
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    const/4 v3, 0x1

    monitor-exit v2

    return v3

    .line 88
    :cond_1
    goto :goto_0

    .line 91
    .end local v1    # "host":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_2
    monitor-exit v2

    .line 92
    return v0

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "resourceUrl":Ljava/lang/String;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    .restart local p0    # "resourceUrl":Ljava/lang/String;
    :catchall_1
    move-exception v1

    move-object v1, v2

    goto :goto_1

    :catchall_2
    move-exception v2

    .line 94
    .local v1, "throwable":Ljava/lang/Throwable;
    :goto_1
    return v0
.end method

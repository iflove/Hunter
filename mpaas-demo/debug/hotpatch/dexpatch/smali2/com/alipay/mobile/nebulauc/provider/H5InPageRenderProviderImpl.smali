.class public Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;
.super Ljava/lang/Object;
.source "H5InPageRenderProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5InPageRenderProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "H5InPageRenderProviderImpl"


# instance fields
.field private final enableTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasGetConfig:Z

.field private listener:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl$1;-><init>(Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->enableTypes:Ljava/util/Set;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->hasGetConfig:Z

    .line 39
    new-instance v0, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl$2;-><init>(Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->listener:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->applyConfig(Ljava/lang/String;)V

    return-void
.end method

.method private applyConfig(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    const-string v0, "H5InPageRenderProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h5_ucInPageRenderTypeList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "types":[Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->enableTypes:Ljava/util/Set;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->enableTypes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 121
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->enableTypes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private tryInitConfig()V
    .locals 3

    .line 126
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->hasGetConfig:Z

    if-eqz v0, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->hasGetConfig:Z

    .line 130
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 131
    .local v0, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_1

    .line 132
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->listener:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    const-string v2, "h5_ucInPageRenderTypeList"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "cfgValue":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->applyConfig(Ljava/lang/String;)V

    .line 135
    .end local v1    # "cfgValue":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addInPageRender(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    return-void

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 52
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 53
    return-void

    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->tryInitConfig()V

    .line 57
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->enableTypes:Ljava/util/Set;

    monitor-enter v1

    .line 58
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->enableTypes:Ljava/util/Set;

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulauc/impl/setup/UcOtherBizSetup;->enableInPageRender(Ljava/lang/String;Ljava/util/Set;)V

    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addInPageRender(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    return-void

    .line 68
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 69
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 70
    return-void

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->tryInitConfig()V

    .line 75
    const/4 v1, 0x0

    .line 77
    .local v1, "useMiniWebview":Z
    :try_start_0
    const-string v2, "templateAppId"

    invoke-static {p2, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "templateAppId":Ljava/lang/String;
    const-string v3, "h5_useMiniWebViewTemplateIds"

    .line 79
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 80
    .local v3, "useMiniWebViewTemplateIdArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    const/4 v1, 0x1

    .line 83
    :cond_2
    const-string v4, "H5InPageRenderProviderImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", miniwebview = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", templateId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v2    # "templateAppId":Ljava/lang/String;
    .end local v3    # "useMiniWebViewTemplateIdArray":Lcom/alibaba/fastjson/JSONArray;
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v2

    .line 86
    .local v2, "tr":Ljava/lang/Throwable;
    const-string v3, "H5InPageRenderProviderImpl"

    const-string v4, "addInPageRender exception "

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .end local v2    # "tr":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->enableTypes:Ljava/util/Set;

    monitor-enter v2

    .line 90
    if-eqz v1, :cond_3

    .line 91
    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 92
    .local v3, "copyEnableTypes":Ljava/util/Set;
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->enableTypes:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 93
    const-string v4, "web-view"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebulauc/impl/setup/UcOtherBizSetup;->enableInPageRender(Ljava/lang/String;Ljava/util/Set;)V

    .line 95
    .end local v3    # "copyEnableTypes":Ljava/util/Set;
    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->enableTypes:Ljava/util/Set;

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulauc/impl/setup/UcOtherBizSetup;->enableInPageRender(Ljava/lang/String;Ljava/util/Set;)V

    .line 98
    :goto_1
    monitor-exit v2

    .line 99
    return-void

    .line 98
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3
.end method

.method public getInPageRenderType(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 104
    return-object v1

    .line 106
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 107
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 108
    return-object v1

    .line 110
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcOtherBizSetup;->getInPageRenderTypes(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

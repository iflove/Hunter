.class public Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;
.super Ljava/lang/Object;
.source "ManifestExtConfigsBean.java"


# instance fields
.field private bundleName:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private events:Ljava/lang/String;

.field private extensionClass:Ljava/lang/String;

.field private filters:Ljava/lang/String;

.field private lazyInit:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extension(Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;)Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;
    .locals 15
    .param p0, "taget"    # Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;

    .line 90
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->getBundleName()Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "bundleName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->getScope()Ljava/lang/String;

    move-result-object v8

    .line 92
    .local v8, "scope":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->getFilters()Ljava/lang/String;

    move-result-object v9

    .line 93
    .local v9, "filters":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->getExtensionClass()Ljava/lang/String;

    move-result-object v10

    .line 94
    .local v10, "extensionClass":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->getLazyInit()Ljava/lang/String;

    move-result-object v11

    .line 95
    .local v11, "lazyInit":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 96
    .local v0, "lazy":Ljava/lang/Boolean;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {v11}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    .line 96
    :cond_0
    move-object v12, v0

    .line 99
    .end local v0    # "lazy":Ljava/lang/Boolean;
    .local v12, "lazy":Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->getType()Ljava/lang/String;

    move-result-object v13

    .line 100
    .local v13, "type":Ljava/lang/String;
    new-instance v14, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v0, v14

    move-object v1, v7

    move-object v2, v10

    move-object v3, v9

    move-object v4, v8

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    return-object v14
.end method

.method public static form(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;

    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 47
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 48
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    if-nez v1, :cond_1

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 51
    :cond_1
    const-string/jumbo v1, "nebula-metainfo"

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 52
    .local v2, "nebula_metaInfo":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    if-nez v1, :cond_2

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 55
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v1, "list":Ljava/util/List;
    const/4 v4, 0x0

    .line 57
    .local v4, "plugininfo":Lcom/alibaba/fastjson/JSONArray;
    const/4 v5, 0x0

    .line 58
    .local v5, "extension":Lcom/alibaba/fastjson/JSONArray;
    const-string/jumbo v6, "plugininfo"

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 59
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/alibaba/fastjson/JSONArray;

    .line 61
    :cond_3
    const-string v6, "extension"

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 62
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lcom/alibaba/fastjson/JSONArray;

    .line 64
    :cond_4
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 67
    :cond_5
    if-eqz v4, :cond_6

    .line 68
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    :cond_6
    if-eqz v5, :cond_7

    .line 71
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    :cond_7
    return-object v1
.end method

.method public static h5plugin(Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;)Lcom/alipay/mobile/nebula/config/H5PluginConfig;
    .locals 3
    .param p0, "manifestExtConfigsBean"    # Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;

    .line 78
    new-instance v0, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>()V

    const/4 v1, 0x0

    .line 79
    .local v1, "config":Lcom/alipay/mobile/nebula/config/H5PluginConfig;
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->className:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->events:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->setEvents(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->bundleName:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->bundleName:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->lazyInit:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->lazyInit:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->lazyInit:Z

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->scope:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->scope:Ljava/lang/String;

    .line 86
    return-object v1
.end method


# virtual methods
.method public getBundleName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->bundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getEvents()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->events:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionClass()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->extensionClass:Ljava/lang/String;

    return-object v0
.end method

.method public getFilters()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->filters:Ljava/lang/String;

    return-object v0
.end method

.method public getLazyInit()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->lazyInit:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setBundleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->bundleName:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->className:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setEvents(Ljava/lang/String;)V
    .locals 0
    .param p1, "events"    # Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->events:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setExtensionClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "extensionClass"    # Ljava/lang/String;

    .line 157
    iput-object p1, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->extensionClass:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setFilters(Ljava/lang/String;)V
    .locals 0
    .param p1, "filters"    # Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->filters:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setLazyInit(Ljava/lang/String;)V
    .locals 0
    .param p1, "lazyInit"    # Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->lazyInit:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->scope:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 165
    iput-object p1, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->type:Ljava/lang/String;

    .line 166
    return-void
.end method

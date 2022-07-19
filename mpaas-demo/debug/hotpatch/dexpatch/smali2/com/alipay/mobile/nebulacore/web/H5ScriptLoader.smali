.class public Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;
.super Ljava/lang/Object;
.source "H5ScriptLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ScriptLoader"

.field private static k:Ljava/lang/Boolean; = null

.field private static l:Lcom/alibaba/fastjson/JSONArray; = null

.field private static m:Ljava/lang/Boolean; = null

.field private static n:Lcom/alibaba/fastjson/JSONArray; = null

.field public static final startupParams:Ljava/lang/String; = "startupParams"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Z

.field public bizLoaded:Z

.field public bridgeLoaded:Z

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/os/Bundle;

.field private i:Lcom/alipay/mobile/h5container/api/H5Page;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->k:Ljava/lang/Boolean;

    .line 65
    sput-object v0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->l:Lcom/alibaba/fastjson/JSONArray;

    .line 67
    sput-object v0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->m:Ljava/lang/Boolean;

    .line 69
    sput-object v0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->n:Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
    .locals 9
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "webView"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 81
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    .line 83
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    .line 84
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 85
    .local v3, "pageParams":Landroid/os/Bundle;
    move-object v3, v1

    const-string v4, "isTinyApp"

    invoke-static {v1, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    const-string v1, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v2

    goto :goto_1

    .line 87
    :cond_1
    :goto_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    move-object v5, v2

    .line 88
    .local v5, "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    move-object v5, v1

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5, v1, v3}, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;->handlerStartupParams(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 92
    .end local v5    # "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    :cond_2
    :goto_1
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h:Landroid/os/Bundle;

    .line 93
    const-string v1, "publicId"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->f:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h:Landroid/os/Bundle;

    const-string v6, "appId"

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->e:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h:Landroid/os/Bundle;

    invoke-static {v1, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->j:Z

    .line 97
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a:Ljava/lang/Object;

    .line 98
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b:Z

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->c:Ljava/util/HashMap;

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v1, v5

    .line 101
    .local v1, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v4, "bizScenario"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "scenario":Ljava/lang/String;
    const-string v4, "scanApp"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 103
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a()V

    .line 105
    :cond_3
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/Nebula;->removeKeysFromStartParams(Lcom/alibaba/fastjson/JSONObject;)V

    .line 106
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "startupParams"

    invoke-virtual {p0, v5, v4}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->setParamsToWebPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v4, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->k:Ljava/lang/Boolean;

    if-nez v4, :cond_4

    .line 108
    const-string v4, "h5_nativeInput4Android"

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    move-object v5, v2

    .line 110
    .local v5, "configObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v4

    if-eqz v4, :cond_4

    .line 111
    const-string v4, "textArea"

    invoke-static {v5, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 112
    .local v4, "disableTextArea":Lcom/alibaba/fastjson/JSONObject;
    const-string v7, "disable"

    invoke-static {v4, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "yes"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sput-object v7, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->k:Ljava/lang/Boolean;

    .line 113
    invoke-static {v4, v6, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->l:Lcom/alibaba/fastjson/JSONArray;

    .line 117
    .end local v4    # "disableTextArea":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 9
    .param p1, "page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 121
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    .line 123
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    .line 124
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 125
    .local v3, "pageParams":Landroid/os/Bundle;
    move-object v3, v1

    const-string v4, "isTinyApp"

    invoke-static {v1, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    const-string v1, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v2

    goto :goto_1

    .line 127
    :cond_1
    :goto_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    move-object v5, v2

    .line 128
    .local v5, "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    move-object v5, v1

    if-eqz v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5, v1, v3}, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;->handlerStartupParams(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 132
    .end local v5    # "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    :cond_2
    :goto_1
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h:Landroid/os/Bundle;

    .line 133
    const-string v1, "publicId"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->f:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h:Landroid/os/Bundle;

    const-string v6, "appId"

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->e:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h:Landroid/os/Bundle;

    invoke-static {v1, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->j:Z

    .line 137
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a:Ljava/lang/Object;

    .line 138
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b:Z

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->c:Ljava/util/HashMap;

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v1, v5

    .line 141
    .local v1, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v4, "bizScenario"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "scenario":Ljava/lang/String;
    const-string v4, "scanApp"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a()V

    .line 145
    :cond_3
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/Nebula;->removeKeysFromStartParams(Lcom/alibaba/fastjson/JSONObject;)V

    .line 146
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "startupParams"

    invoke-virtual {p0, v5, v4}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->setParamsToWebPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v4, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->k:Ljava/lang/Boolean;

    if-nez v4, :cond_5

    .line 148
    const-string v4, "h5_nativeInput4Android"

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    move-object v5, v2

    .line 150
    .local v5, "configObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v4

    const-string v7, "yes"

    if-eqz v4, :cond_4

    .line 151
    const-string v4, "textArea"

    invoke-static {v5, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 152
    .local v4, "disableTextArea":Lcom/alibaba/fastjson/JSONObject;
    const-string v8, "disable"

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sput-object v8, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->k:Ljava/lang/Boolean;

    .line 153
    invoke-static {v4, v6, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->l:Lcom/alibaba/fastjson/JSONArray;

    .line 155
    .end local v4    # "disableTextArea":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    const-string v2, "h5_EnableInpageInput"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "inPageInputConfig":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->m:Ljava/lang/Boolean;

    .line 157
    const-string v4, "h5_inPageInputBlackList"

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    sput-object v4, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->n:Lcom/alibaba/fastjson/JSONArray;

    .line 160
    .end local v2    # "inPageInputConfig":Ljava/lang/String;
    .end local v5    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "js"    # Ljava/lang/String;

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(function(){if(window.HASINJECTDRNAMICSCRIPT){console.log(\"has load h5_dsRulesV2: \"+window.HASINJECTDRNAMICSCRIPT);return}window.HASINJECTDRNAMICSCRIPT=false;function onDOMReady(callback){var readyRE=/complete|loaded|interactive/;if(readyRE.test(document.readyState)){setTimeout(function(){callback()},1)}else{document.defaultView.addEventListener(\"DOMContentLoaded\",function(){callback()},false)}}onDOMReady(function(){if(!window.HASINJECTDRNAMICSCRIPT){"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "console.log(\"load h5_dsRulesV2 success\");window.HASINJECTDRNAMICSCRIPT=true}})})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    return-object v0
.end method

.method private a(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8
    .param p1, "webView"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .param p2, "h5_DynamicScript"    # Ljava/lang/String;

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .local v0, "scriptBuilder":Ljava/lang/StringBuilder;
    const-string v1, "H5ScriptLoader"

    if-eqz p1, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_4

    .line 422
    :cond_0
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 423
    .local v4, "jaScripts":Lcom/alibaba/fastjson/JSONArray;
    move-object v4, v2

    if-eqz v2, :cond_5

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    .line 428
    :cond_1
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 429
    const/4 v5, 0x0

    .line 431
    .local v5, "scriptList":Ljava/util/List;
    :try_start_0
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 432
    .local v6, "joScript":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {p0, v6}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v7

    .line 435
    .end local v6    # "joScript":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_1

    .line 433
    :catchall_0
    move-exception v6

    .line 434
    .local v6, "t":Ljava/lang/Throwable;
    const-string v7, "parse dynamic script exception."

    invoke-static {v1, v7, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 437
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 441
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 442
    .local v3, "dynamicScript":Ljava/lang/String;
    move-object v3, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 445
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .end local v3    # "dynamicScript":Ljava/lang/String;
    goto :goto_2

    .line 428
    .end local v5    # "scriptList":Ljava/util/List;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    .end local v2    # "index":I
    :cond_4
    return-object v0

    .line 424
    :cond_5
    :goto_3
    const-string v2, "invalid dynamic script."

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-object v0

    .line 418
    .end local v4    # "jaScripts":Lcom/alibaba/fastjson/JSONArray;
    :cond_6
    :goto_4
    const-string v2, "no config found for dynamic script"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-object v0
.end method

.method private a(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;
    .locals 10
    .param p1, "joScript"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 484
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v0, "scriptList":Ljava/util/List;
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    move-object v4, v3

    .line 487
    .local v2, "iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 488
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 490
    .local v1, "url":Ljava/lang/String;
    move-object v1, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 494
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 496
    .local v3, "jaConds":Lcom/alibaba/fastjson/JSONArray;
    move-object v3, v5

    if-eqz v5, :cond_9

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_4

    .line 503
    :cond_2
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 504
    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 506
    .local v4, "joCond":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v6

    const-string v7, "appId"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 507
    .local v6, "appIdCond":Ljava/lang/String;
    const-string v7, "publicId"

    invoke-static {v4, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 508
    .local v7, "publicIdCond":Ljava/lang/String;
    const-string v8, "url"

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 511
    .local v8, "urlCond":Ljava/lang/String;
    nop

    .line 512
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->e:Ljava/lang/String;

    invoke-static {v9, v6}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 513
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->f:Ljava/lang/String;

    invoke-static {v9, v7}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 515
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->g:Ljava/lang/String;

    invoke-static {v9, v8}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v9, 0x1

    .line 518
    :goto_3
    if-eqz v9, :cond_7

    .line 519
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    goto :goto_0

    .line 503
    .end local v4    # "joCond":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "appIdCond":Ljava/lang/String;
    .end local v7    # "publicIdCond":Ljava/lang/String;
    .end local v8    # "urlCond":Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 523
    .end local v1    # "url":Ljava/lang/String;
    .end local v3    # "jaConds":Lcom/alibaba/fastjson/JSONArray;
    .end local v5    # "index":I
    :cond_8
    goto :goto_0

    .line 497
    .restart local v1    # "url":Ljava/lang/String;
    .restart local v3    # "jaConds":Lcom/alibaba/fastjson/JSONArray;
    :cond_9
    :goto_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    goto :goto_0

    .line 526
    .end local v1    # "url":Ljava/lang/String;
    .end local v3    # "jaConds":Lcom/alibaba/fastjson/JSONArray;
    :cond_a
    return-object v0

    .line 481
    .end local v0    # "scriptList":Ljava/util/List;
    .end local v2    # "iterator":Ljava/util/Iterator;
    :cond_b
    :goto_5
    return-object v1
.end method

.method private a()V
    .locals 1

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b:Z

    .line 164
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
    .locals 8
    .param p1, "webView"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 315
    .local v0, "enterTime":J
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->composeBridge()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "bridgeStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bridgeStr "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5ScriptLoader"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "javascript:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 318
    const-string v3, "bridge data loaded!"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->c()V

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    .line 322
    .local v5, "deltaTime":J
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "load bridge delta time "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "cond"    # Ljava/lang/String;

    .line 530
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v1, 0x0

    .line 531
    .local v1, "pattern":Ljava/util/regex/Pattern;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 532
    const/4 v0, 0x0

    return v0

    .line 534
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dynamicScript"    # Ljava/lang/String;

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "load dynamicV2 script "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5ScriptLoader"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "var script,head=document.head||document.documentElement;script=document.createElement(\"script\");script.async=true;script.charset=\"UTF-8\";script.src=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "head.insertBefore(script,head.firstChild);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    return-object v0
.end method

.method private b(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
    .locals 5
    .param p1, "webView"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 356
    const-string v0, "h5_dsRules"

    .line 357
    .local v0, "h5_dsRules":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->j:Z

    if-eqz v1, :cond_0

    .line 359
    const-string v0, "h5_dsRulesForTinyApp"

    .line 362
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "h5_DynamicScript":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "isTinyApp"

    invoke-static {v2, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader$1;-><init>(Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadDynamicJs(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 377
    :goto_0
    sget-boolean v2, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 378
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadDynamicJs4Jsapi(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 380
    :cond_2
    return-void
.end method

.method private static b(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V
    .locals 2
    .param p0, "webView"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .param p1, "javascript"    # Ljava/lang/String;

    .line 539
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    return-void

    .line 542
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method private b()Z
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "dynamicScript"    # Ljava/lang/String;

    .line 472
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nebula-addcors"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    const-string v0, "script.setAttribute(\'crossorigin\',\'\');"

    return-object v0

    .line 475
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private c()V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bridgeReady"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_0
    return-void
.end method

.method private c(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
    .locals 5
    .param p1, "webView"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 549
    if-nez p1, :cond_0

    .line 550
    return-void

    .line 553
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->k:Ljava/lang/Boolean;

    const-string v1, "H5ScriptLoader"

    const-string v2, "javascript:(function(){window.disableNativeTextArea=true;})()"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    invoke-virtual {p1, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 555
    const-string v0, "disable all native textarea"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_3

    .line 558
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "appId"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 559
    .local v3, "appId":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->l:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_3

    .line 560
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 561
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->l:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 562
    sget-object v4, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->l:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 563
    invoke-virtual {p1, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "disable native textarea : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    return-void

    .line 561
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    .end local v0    # "i":I
    .end local v3    # "appId":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private d(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
    .locals 3
    .param p1, "webView"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 577
    if-nez p1, :cond_0

    .line 578
    return-void

    .line 581
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 582
    sget-object v0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->n:Lcom/alibaba/fastjson/JSONArray;

    const-string v1, "H5ScriptLoader"

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    const-string v0, "javascript:(function(){window.ENABLEINPAGEINPUT=false;})()"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 584
    const-string v0, "disable in page input"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 586
    :cond_1
    const-string v0, "javascript:(function(){window.ENABLEINPAGEINPUT=true;})()"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 587
    const-string v0, "enable in page input"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_2
    return-void
.end method


# virtual methods
.method public composeBridge()Ljava/lang/String;
    .locals 4

    .line 332
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    const-string v1, "H5ScriptLoader"

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "bridge already loaded!"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v0, 0x0

    return-object v0

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "composeBridge "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    .line 339
    const/4 v1, -0x1

    .line 340
    .local v1, "webViewId":I
    const-string v2, ""

    .line 341
    .local v2, "token":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v3, :cond_2

    .line 342
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebViewId()I

    move-result v1

    .line 343
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridgeToken()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 344
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->generateBridgeToken(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v2

    .line 345
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->setBridgeToken(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridgeToken()Ljava/lang/String;

    move-result-object v2

    .line 352
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->c:Ljava/util/HashMap;

    invoke-static {v3, v2, v0, v1}, Lcom/alipay/mobile/nebulacore/Nebula;->loadJsBridge(Ljava/util/HashMap;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public injectPageReady()V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    .line 284
    const-string v1, "javascript:(function(){window.ALIPAYVIEWAPPEARED=1})();"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    const-string v1, "appearAfterPreRender"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 289
    :cond_1
    return-void
.end method

.method public loadDynamicJs(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V
    .locals 7
    .param p1, "webView"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .param p2, "h5_DynamicScript"    # Ljava/lang/String;

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 384
    .local v0, "enterTime":J
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 385
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 386
    .local v3, "finalScript":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    return-void

    .line 390
    :cond_0
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 392
    .local v4, "deltaTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "load dynamic delta time "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "H5ScriptLoader"

    invoke-static {v6, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public loadDynamicJs4Jsapi(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V
    .locals 8
    .param p1, "webView"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .param p2, "h5_DynamicScript"    # Ljava/lang/String;

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 397
    .local v0, "enterTime":J
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->H5_LOAD_JS:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    sget-object p2, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->H5_LOAD_JS:Ljava/lang/String;

    .line 400
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "H5ScriptLoader"

    if-eqz v2, :cond_1

    .line 401
    const-string v2, "load loadDynamicJs4Jsapi none return"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void

    .line 404
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 405
    .local v2, "scriptBuilder":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(function(){function onDOMReady(callback){var readyRE=/complete|loaded|interactive/;if(readyRE.test(document.readyState)){setTimeout(function(){callback()},1);}else{document.defaultView.addEventListener(\"DOMContentLoaded\",function(){callback()},false);}}onDOMReady(function(){"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "console.log(\"load insertJS success\")});})();"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 411
    .local v4, "deltaTime":J
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "load dynamic4jsapi delta time "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public loadScript()Z
    .locals 10

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 174
    const-string v0, "H5ScriptLoader"

    const-string v2, "invalid web view parameter!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return v1

    .line 178
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->g:Ljava/lang/String;

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 180
    .local v2, "time":J
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {p0, v4}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V

    .line 184
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    if-eqz v4, :cond_1

    .line 185
    monitor-exit v0

    return v5

    .line 187
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h:Landroid/os/Bundle;

    const-string v6, "isPrerender"

    invoke-static {v4, v6, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    .line 188
    .local v1, "isPrerender":Z
    if-nez v4, :cond_3

    .line 189
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v4, :cond_3

    .line 190
    const-string v4, "H5ScriptLoader"

    const-string v6, "injectPageReady when normal window present"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    instance-of v6, v4, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v6, :cond_2

    .line 193
    check-cast v4, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->injectPageReady()V

    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->injectPageReady()V

    .line 199
    :cond_3
    :goto_0
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    if-nez v4, :cond_4

    .line 201
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {p0, v4}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V

    .line 204
    :cond_4
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    if-nez v4, :cond_c

    .line 205
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    .line 207
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b:Z

    if-eqz v4, :cond_5

    .line 208
    const-string v4, "H5ScriptLoader"

    const-string v6, "load raw h5_scan.js"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    sget v6, Lcom/alipay/mobile/nebula/R$raw;->h5_scan:I

    invoke-static {v6}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 212
    :cond_5
    const-string v4, "H5ScriptLoader"

    const-string v6, "load raw share_new_min.js"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    sget v6, Lcom/alipay/mobile/nebula/R$raw;->share_new_min:I

    invoke-static {v6}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 216
    const/4 v4, 0x0

    .line 217
    .local v4, "keyboardStr":Ljava/lang/String;
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 220
    sget v6, Lcom/alipay/mobile/nebula/R$raw;->h5_keyboard:I

    invoke-static {v6}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 221
    sget-boolean v6, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 222
    const-string v6, "/sdcard/h5_keyboard.js"

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 223
    const-string v6, "/sdcard/h5_keyboard.js"

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 227
    :cond_6
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/Nebula;->enableNativeKeyboard(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v6, :cond_7

    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "DEBUG_PANEL_PAGE_TAG"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 228
    const-string v6, "H5ScriptLoader"

    const-string v7, "inject native input js"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-static {v6, v4}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 230
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {p0, v6}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->c(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V

    .line 232
    :cond_7
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {p0, v6}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V

    .line 234
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    sget v7, Lcom/alipay/mobile/nebula/R$raw;->h5_newembedview:I

    invoke-static {v7}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 237
    iget-boolean v6, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->j:Z

    if-eqz v6, :cond_8

    const-string v6, "yes"

    const-string v7, "h5_loadJavascript_for_tiny"

    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 239
    monitor-exit v0

    return v5

    .line 243
    :cond_8
    const-string v6, "H5ScriptLoader"

    const-string v7, "load raw h5_performance.js"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget v6, Lcom/alipay/mobile/nebula/R$raw;->h5_performance:I

    invoke-static {v6}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "h5PerformanceJS":Ljava/lang/String;
    const/4 v7, 0x0

    .line 247
    .local v7, "token":Ljava/lang/String;
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v8}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridgeToken()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9

    .line 248
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->generateBridgeToken(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 249
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v8, v7}, Lcom/alipay/mobile/h5container/api/H5Page;->setBridgeToken(Ljava/lang/String;)V

    goto :goto_1

    .line 251
    :cond_9
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v8}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridgeToken()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 254
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 255
    const-string v8, "{bridge_token}"

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 257
    :cond_a
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-static {v8, v6}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 260
    const-string v8, "H5ScriptLoader"

    const-string v9, "load raw h5_bizlog_pre.js"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    sget v9, Lcom/alipay/mobile/nebula/R$raw;->h5_bizlog_pre:I

    invoke-static {v9}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 262
    const-string v8, "H5ScriptLoader"

    const-string v9, "load raw h5_startparam.js"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    sget v9, Lcom/alipay/mobile/nebula/R$raw;->h5_startparam:I

    invoke-static {v9}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 265
    const-string v8, "NO"

    const-string v9, "mp_h5_shouldHookGetlocation"

    invoke-static {v9}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 266
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v9, "getLocation"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebulacore/Nebula;->supportJsaApi(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 267
    const-string v8, "H5ScriptLoader"

    const-string v9, "load raw h5location_min.js"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    sget v9, Lcom/alipay/mobile/nebula/R$raw;->h5location_min:I

    invoke-static {v9}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    goto :goto_2

    .line 271
    :cond_b
    const-string v8, "H5ScriptLoader"

    const-string v9, "do not inject h5location_min.js by config."

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .end local v1    # "isPrerender":Z
    .end local v4    # "keyboardStr":Ljava/lang/String;
    .end local v6    # "h5PerformanceJS":Ljava/lang/String;
    .end local v7    # "token":Ljava/lang/String;
    :cond_c
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 278
    .local v0, "elapse":J
    const-string v4, "H5ScriptLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "load javascript elapse ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "] for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return v5

    .line 276
    .end local v0    # "elapse":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resetBridge()V
    .locals 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resetBridge "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5ScriptLoader"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    .line 169
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    .line 170
    return-void
.end method

.method public setParamsToWebPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    if-nez v1, :cond_1

    .line 303
    const-string v1, "H5ScriptLoader"

    const-string v2, "bridge not loaded."

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    monitor-exit v0

    return-void

    .line 306
    :cond_1
    const-string v1, "H5ScriptLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setParamsToWebPage [key] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [value] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:if(typeof AlipayJSBridge === \'object\'){AlipayJSBridge."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 309
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 297
    :cond_2
    :goto_0
    const-string v0, "H5ScriptLoader"

    const-string v1, "invalid js parameters!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.class public Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5UrlInterceptPlugin.java"


# static fields
.field public static final BROADCAST_TITLE_URL:Ljava/lang/String; = "com.alipay.mobile.h5container.pageFinished"

.field public static final TAG:Ljava/lang/String; = "H5UrlInterceptPlugin"

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Lcom/alipay/mobile/h5container/api/H5Page;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->e:Ljava/util/List;

    const-string v1, "tel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v1, "mailto"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v1, "sms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v1, "geo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->a:Z

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->c:Ljava/util/Set;

    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 6
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 116
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    .line 117
    .local v0, "builder":Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 118
    .local v3, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "force"

    invoke-virtual {v1, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "h5PageDoLoadUrl"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    .line 120
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    .line 121
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->target(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 122
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 123
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    const-string v0, "H5UrlInterceptPlugin"

    .line 270
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    const-string v1, "http"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 274
    :cond_0
    const-string v1, "h5_SSLVerifyDomain"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    .line 275
    .local v4, "config":Ljava/lang/String;
    move-object v4, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    return v2

    .line 279
    :cond_1
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    move-object v5, v3

    .line 280
    .local v5, "array":Lcom/alibaba/fastjson/JSONArray;
    move-object v5, v1

    if-eqz v1, :cond_5

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 284
    :cond_2
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 286
    :try_start_0
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v3, "rule":Ljava/lang/String;
    move-object v3, v6

    invoke-static {v6, p2}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 288
    const-string v6, "https://ds.alipay.com/fd-in15xm06/index.html"

    .line 289
    .local v6, "errorUrl":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "javascript:location.replace(\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\');"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 290
    .local v7, "url":Ljava/lang/String;
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v8}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V

    .line 291
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "url intercepted by pattern "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    const/4 v0, 0x1

    return v0

    .line 296
    .end local v3    # "rule":Ljava/lang/String;
    .end local v6    # "errorUrl":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 294
    :catchall_0
    move-exception v3

    .line 295
    .local v3, "t":Ljava/lang/Throwable;
    const-string v6, "match http host exception."

    invoke-static {v0, v6, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "index":I
    :cond_4
    return v2

    .line 281
    :cond_5
    :goto_2
    return v2

    .line 271
    .end local v4    # "config":Ljava/lang/String;
    .end local v5    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_6
    :goto_3
    return v2
.end method

.method private b(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 16
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    move-object/from16 v1, p0

    const-string v0, "url"

    const-string v2, "H5UrlInterceptPlugin"

    .line 128
    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isBackKeyPressed is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->a:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 130
    .local v6, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v6, v4

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v7, v5

    .line 131
    .local v7, "url":Ljava/lang/String;
    move-object v7, v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v8, v5

    .line 132
    .local v8, "uri":Landroid/net/Uri;
    move-object v8, v4

    if-nez v4, :cond_0

    .line 133
    const-string v0, "load url intercepted for failed to parse url."

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return v3

    .line 136
    :cond_0
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "scheme":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, "host":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "url "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " scheme "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " host "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v10, v1, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->d:Ljava/lang/String;

    iget-object v11, v1, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v12, 0x0

    invoke-static {v7, v10, v11, v12}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->interceptXiaoChengXu(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 142
    const-string v10, "force load url"

    invoke-static {v2, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-class v10, Lcom/alipay/mobile/nebula/provider/TinyWebViewInterceptProvider;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/nebula/provider/TinyWebViewInterceptProvider;

    move-object v11, v5

    .line 144
    .local v11, "provider":Lcom/alipay/mobile/nebula/provider/TinyWebViewInterceptProvider;
    move-object v11, v10

    if-eqz v10, :cond_1

    .line 145
    iget-object v10, v1, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->d:Ljava/lang/String;

    invoke-interface {v11, v10, v7}, Lcom/alipay/mobile/nebula/provider/TinyWebViewInterceptProvider;->buildAccessForbiddenUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 146
    .local v5, "forbiddenUrl":Ljava/lang/String;
    move-object v5, v10

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 147
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "javascript:location.replace(\'"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\');"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v0, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 151
    .end local v5    # "forbiddenUrl":Ljava/lang/String;
    :cond_1
    return v3

    .line 154
    .end local v11    # "provider":Lcom/alipay/mobile/nebula/provider/TinyWebViewInterceptProvider;
    :cond_2
    invoke-direct {v1, v4, v9}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    return v3

    .line 159
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".docx"

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".doc"

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    :cond_4
    const-string v0, "h5_open_doc"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "value":Ljava/lang/String;
    const-string v10, "no"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 162
    iget-object v10, v1, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v10, v7, v5}, Lcom/alipay/mobile/nebulacore/Nebula;->openInBrowser(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 163
    return v3

    .line 169
    .end local v0    # "value":Ljava/lang/String;
    :cond_5
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 170
    .local v0, "mainFrameUri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 171
    .local v10, "mainFrameHost":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 172
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 175
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeInterceptUtil;->getCompetitiveListWarp()Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;

    move-result-object v11

    iget-object v11, v11, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;->value:Ljava/lang/String;

    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 176
    .local v11, "comListDataTmp":Lcom/alibaba/fastjson/JSONObject;
    const/4 v13, 0x0

    .line 177
    .local v13, "isInCompetitiveAliWhiteList":Z
    if-eqz v11, :cond_8

    if-eqz v10, :cond_8

    .line 178
    const-string v14, "aliWhiteList"

    .line 179
    invoke-virtual {v11, v14}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v14

    .line 180
    .local v5, "aliWhiteList":Lcom/alibaba/fastjson/JSONArray;
    move-object v5, v14

    if-eqz v14, :cond_8

    .line 181
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_8

    .line 182
    invoke-virtual {v5, v14}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 183
    invoke-static {v15, v10}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 184
    const/4 v13, 0x1

    .line 185
    goto :goto_1

    .line 181
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 190
    .end local v5    # "aliWhiteList":Lcom/alibaba/fastjson/JSONArray;
    .end local v14    # "i":I
    :cond_8
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "isInCompetitiveAliWhiteList "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v14, "about:blank"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 193
    return v12

    .line 194
    :cond_9
    const-string v14, "about"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_e

    const-string v14, "data"

    .line 195
    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_e

    const-string v14, "http"

    .line 196
    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_e

    const-string v14, "https"

    .line 197
    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_e

    const-string v14, "ftp"

    .line 198
    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_2

    .line 200
    :cond_a
    const-string v14, "file"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 201
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 202
    .local v5, "absPath":Ljava/lang/String;
    move-object v5, v14

    if-eqz v14, :cond_b

    const-string v14, "/android_asset/"

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 203
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "load asset "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_b
    return v12

    .line 207
    .end local v5    # "absPath":Ljava/lang/String;
    :cond_c
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v12

    const-class v14, Lcom/alipay/mobile/nebula/provider/H5SchemeInterceptProvider;

    .line 208
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/nebula/provider/H5SchemeInterceptProvider;

    .line 209
    .local v5, "h5SchemeInterceptProvider":Lcom/alipay/mobile/nebula/provider/H5SchemeInterceptProvider;
    move-object v5, v12

    if-eqz v12, :cond_d

    .line 210
    iget-object v12, v1, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5, v7, v12}, Lcom/alipay/mobile/nebula/provider/H5SchemeInterceptProvider;->handlerOnScheme(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v2

    return v2

    .line 213
    :cond_d
    invoke-direct {v1, v7, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 199
    .end local v5    # "h5SchemeInterceptProvider":Lcom/alipay/mobile/nebula/provider/H5SchemeInterceptProvider;
    :cond_e
    :goto_2
    return v12

    .line 215
    .end local v0    # "mainFrameUri":Landroid/net/Uri;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "host":Ljava/lang/String;
    .end local v10    # "mainFrameHost":Ljava/lang/String;
    .end local v11    # "comListDataTmp":Lcom/alibaba/fastjson/JSONObject;
    .end local v13    # "isInCompetitiveAliWhiteList":Z
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "check url exception."

    invoke-static {v2, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    return v3
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "scheme"    # Ljava/lang/String;

    .line 303
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_3

    const-string v0, "javascript"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 304
    sget-wide v5, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->mspJsApiPayFinishTime:J

    const-wide/16 v7, 0x0

    const/4 v0, 0x1

    const-string v9, "H5UrlInterceptPlugin"

    const/4 v10, 0x0

    cmp-long v11, v5, v7

    if-lez v11, :cond_0

    .line 305
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    move-object v6, v10

    .line 306
    .local v6, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v6, v5

    if-eqz v5, :cond_0

    .line 307
    const-string v5, "h5_tradePay_openUrlDelay"

    invoke-interface {v6, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v10

    .line 308
    .local v7, "value":Ljava/lang/String;
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    move-object v8, v10

    .line 309
    .local v8, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v8, v5

    if-eqz v5, :cond_0

    .line 310
    const-string v5, "time"

    invoke-static {v8, v5, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v5

    move v11, v4

    .line 311
    .local v11, "time":I
    mul-int/lit16 v5, v5, 0x3e8

    .line 312
    .end local v11    # "time":I
    .local v5, "time":I
    const-string v11, "schemeException"

    invoke-static {v8, v11, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v11

    .line 313
    .local v11, "schemeArray":Lcom/alibaba/fastjson/JSONArray;
    if-lez v5, :cond_0

    invoke-virtual {v11, v3}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sget-wide v14, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->mspJsApiPayFinishTime:J

    sub-long/2addr v12, v14

    int-to-long v14, v5

    cmp-long v16, v12, v14

    if-gez v16, :cond_0

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "intercept scheme by mspJsApiPayFinish scheme "

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v4, "H5_OPENURL_OUTSIDE_DENY"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 316
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string v9, "targetUrl"

    invoke-virtual {v4, v9, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string v9, "from=tradePay"

    invoke-virtual {v4, v9, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 317
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->d:Ljava/lang/String;

    const-string v10, "appId"

    invoke-virtual {v4, v10, v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v9}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 315
    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 318
    return v0

    .line 326
    .end local v5    # "time":I
    .end local v6    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "schemeArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_0
    :try_start_0
    invoke-static {v2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 330
    .local v5, "launchIntent":Landroid/content/Intent;
    nop

    .line 333
    const-string v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    invoke-virtual {v5, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 335
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xf

    if-lt v6, v7, :cond_1

    .line 336
    invoke-virtual {v5, v10}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 339
    :cond_1
    :try_start_1
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->startExtActivity(Landroid/content/Intent;)V

    .line 340
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->c:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 341
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 343
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "start ext app: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    return v0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "exception detail"

    invoke-static {v9, v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    return v4

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "launchIntent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 328
    .local v0, "ex":Ljava/net/URISyntaxException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bad uri "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return v4

    .line 351
    .end local v0    # "ex":Ljava/net/URISyntaxException;
    :cond_3
    return v4
.end method

.method public static interceptXiaoChengXu(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Z)Z
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p3, "iframe"    # Z

    .line 233
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 234
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, ""

    .line 235
    .local v1, "host":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v3, "scheme":Ljava/lang/String;
    move-object v3, v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->e:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    return v2

    .line 240
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 243
    .end local v3    # "scheme":Ljava/lang/String;
    :cond_1
    const-class v4, Lcom/alipay/mobile/nebula/provider/TinyWebViewInterceptProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/TinyWebViewInterceptProvider;

    .line 244
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/TinyWebViewInterceptProvider;
    move-object v3, v4

    if-eqz v4, :cond_2

    invoke-interface {v3, p1, v1}, Lcom/alipay/mobile/nebula/provider/TinyWebViewInterceptProvider;->isDomainInWhiteList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 245
    return v2

    .line 248
    :cond_2
    const/4 v2, 0x0

    .line 250
    .local v2, "hasPermissionFile":Z
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 251
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermissionFile(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v2

    .line 254
    :cond_3
    const/4 v4, 0x0

    .line 255
    .local v4, "shouldIntercept":Z
    if-eqz v2, :cond_5

    .line 257
    const-string v5, "validDomain"

    if-eqz p3, :cond_4

    .line 258
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v6

    .line 259
    invoke-interface {v6, p1, v1, v5, p2}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermissionOnIframe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    move v4, v5

    goto :goto_0

    .line 261
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v6

    .line 262
    invoke-interface {v6, p1, v1, v5, p2}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    move v4, v5

    .line 266
    :cond_5
    :goto_0
    return v4
.end method


# virtual methods
.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 11
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 82
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 84
    .local v1, "intercepted":Z
    const-string v2, "h5PageShouldLoadUrl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "H5UrlInterceptPlugin"

    if-eqz v2, :cond_0

    .line 85
    const-string v2, "H5_PAGE_SHOULD_LOAD_URL"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v1

    goto/16 :goto_0

    .line 87
    :cond_0
    const-string v2, "h5PageReceivedTitle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "title"

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 88
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 89
    .local v2, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 90
    .local v5, "param":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "title":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "title":Ljava/lang/String;
    .end local v5    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    goto :goto_0

    :cond_2
    const-string v2, "h5ToolbarBack"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    .line 96
    const-string v2, "H5_TOOLBAR_BACK"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->a:Z

    goto :goto_0

    .line 98
    :cond_3
    const-string v2, "h5PagePhysicalBack"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 99
    const-string v2, "H5_PAGE_PHYSICAL_BACK"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->a:Z

    goto :goto_0

    .line 101
    :cond_4
    const-string v2, "h5PageFinished"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 102
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    move-object v6, v5

    .line 103
    .local v6, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v6, v2

    const-string v7, "url"

    invoke-static {v2, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "url":Ljava/lang/String;
    invoke-static {v6, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "title":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v5, "intent":Landroid/content/Intent;
    move-object v5, v9

    const-string v10, "com.alipay.mobile.h5container.pageFinished"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {v5, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v4, "send page finished broadcast."

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 112
    .end local v2    # "url":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "title":Ljava/lang/String;
    :cond_5
    :goto_0
    return v1
.end method

.method public onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 3
    .param p1, "coreNode"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 74
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 75
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "appId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->d:Ljava/lang/String;

    .line 77
    const-string v1, "H5UrlInterceptPlugin"

    const-string v2, "url interception."

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 365
    const-string v0, "h5PageShouldLoadUrl"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v0, "h5PageReceivedTitle"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v0, "h5PagePhysicalBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v0, "h5ToolbarBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 369
    const-string v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 358
    const-string v0, "H5UrlInterceptPlugin"

    const-string v1, "onRelease"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 361
    return-void
.end method

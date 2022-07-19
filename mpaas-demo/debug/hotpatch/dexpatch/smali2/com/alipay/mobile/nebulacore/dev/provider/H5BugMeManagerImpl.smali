.class public Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;
.super Ljava/lang/Object;
.source "H5BugMeManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/dev/H5BugMeManager;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

.field private h:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->a:[Ljava/lang/String;

    .line 37
    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->b:Landroid/util/LruCache;

    .line 41
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->enabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->c:Z

    .line 42
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->d:Z

    .line 43
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->e:Z

    .line 44
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->f:Z

    .line 45
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->g:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    .line 46
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->h:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->i:Z

    return-void
.end method

.method private a()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->g:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    if-nez v0, :cond_0

    .line 72
    const-string v0, "H5BugMeManagerImpl"

    const-string v1, "create DevPlugin & BugMeProvider"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->g:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    .line 74
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;-><init>(Lcom/alipay/mobile/nebula/dev/H5BugMeManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->h:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 75
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->h:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->g:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 78
    :cond_0
    return-void
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 28
    .param p1, "result"    # Ljava/util/HashMap;
    .param p2, "workerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 229
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->h:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    if-nez v0, :cond_0

    .line 230
    return-void

    .line 232
    :cond_0
    const-string v0, "event"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 233
    .local v3, "event":Ljava/lang/String;
    const-string v0, "msg"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 235
    .local v4, "message":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "worker_"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 236
    .local v13, "viewId":Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 237
    .local v14, "url":Ljava/lang/String;
    const-string v6, ""

    .line 238
    .local v6, "sessionId":Ljava/lang/String;
    const-string v7, ""

    .line 239
    .local v7, "title":Ljava/lang/String;
    const-string v8, ""

    .line 241
    .local v8, "userAgent":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    const/4 v15, 0x0

    move-object v9, v15

    .line 242
    .local v9, "nebulaService":Lcom/alipay/mobile/nebulacore/api/NebulaService;
    move-object/from16 v16, v0

    .end local v9    # "nebulaService":Lcom/alipay/mobile/nebulacore/api/NebulaService;
    .local v16, "nebulaService":Lcom/alipay/mobile/nebulacore/api/NebulaService;
    const-string v12, "OnStarted"

    if-eqz v0, :cond_6

    .line 243
    invoke-interface/range {v16 .. v16}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v17

    .line 245
    .local v17, "topPage":Lcom/alipay/mobile/h5container/api/H5Page;
    :try_start_0
    invoke-interface/range {v17 .. v17}, Lcom/alipay/mobile/h5container/api/H5Page;->getTitle()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    .line 250
    move-object/from16 v18, v7

    move-object v0, v15

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    move-object v0, v15

    .line 247
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-interface/range {v17 .. v17}, Lcom/alipay/mobile/h5container/api/H5Page;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface/range {v17 .. v17}, Lcom/alipay/mobile/h5container/api/H5Page;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getTitle()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 248
    invoke-interface/range {v17 .. v17}, Lcom/alipay/mobile/h5container/api/H5Page;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v18, v7

    goto :goto_0

    .line 251
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_1
    move-object/from16 v18, v7

    .end local v7    # "title":Ljava/lang/String;
    .local v18, "title":Ljava/lang/String;
    :goto_0
    invoke-interface/range {v17 .. v17}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 252
    invoke-interface/range {v17 .. v17}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v19, v8

    goto :goto_1

    .line 251
    :cond_2
    move-object/from16 v19, v8

    .line 254
    .end local v8    # "userAgent":Ljava/lang/String;
    .local v19, "userAgent":Ljava/lang/String;
    :goto_1
    invoke-static/range {v17 .. v17}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->getSessionId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v20

    .line 255
    .end local v6    # "sessionId":Ljava/lang/String;
    .local v20, "sessionId":Ljava/lang/String;
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 256
    const-class v6, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 257
    .local v0, "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v0, v6

    if-eqz v6, :cond_4

    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 258
    invoke-interface/range {v17 .. v17}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v21

    .line 259
    .local v21, "pageData":Lcom/alipay/mobile/h5container/api/H5PageData;
    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 260
    .local v11, "name":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "package_nick"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 261
    .local v10, "packageNick":Ljava/lang/String;
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v7, v15

    .line 262
    .local v7, "obj":Lcom/alibaba/fastjson/JSONObject;
    move-object v9, v6

    .end local v7    # "obj":Lcom/alibaba/fastjson/JSONObject;
    .local v9, "obj":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "appId"

    invoke-virtual {v6, v8, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v6, "name"

    invoke-virtual {v9, v6, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppVersion()Ljava/lang/String;

    move-result-object v6

    const-string v7, "version"

    invoke-virtual {v9, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v6, "packageNick"

    invoke-virtual {v9, v6, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/h5container/api/H5PageData;->getResPkgInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "resource"

    invoke-virtual {v9, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/h5container/api/H5PageData;->getIsTinyApp()Ljava/lang/String;

    move-result-object v6

    const-string v7, "yes"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "isTinyApp"

    invoke-virtual {v9, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/h5container/api/H5PageData;->getReleaseType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "releaseType"

    invoke-virtual {v9, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v6

    move-object v7, v15

    .line 270
    .local v7, "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v8, v6

    .end local v7    # "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v8, "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v6, :cond_3

    .line 271
    iget-object v6, v8, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    const-string v7, "icon"

    invoke-virtual {v9, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_3
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->h:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-interface {v6, v13, v9}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setPkgInfo(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 274
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->h:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const/16 v22, 0x0

    const-string v7, "update"

    move-object/from16 v23, v8

    .end local v8    # "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v23, "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v8, v13

    move-object/from16 v24, v9

    .end local v9    # "obj":Lcom/alibaba/fastjson/JSONObject;
    .local v24, "obj":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v9, v19

    move-object/from16 v25, v10

    .end local v10    # "packageNick":Ljava/lang/String;
    .local v25, "packageNick":Ljava/lang/String;
    move-object v10, v14

    move-object/from16 v26, v11

    .end local v11    # "name":Ljava/lang/String;
    .local v26, "name":Ljava/lang/String;
    move-object/from16 v11, v18

    move-object/from16 v27, v12

    move-object/from16 v12, v22

    invoke-interface/range {v6 .. v12}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->pageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_2

    .line 257
    .end local v21    # "pageData":Lcom/alipay/mobile/h5container/api/H5PageData;
    .end local v23    # "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v24    # "obj":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "packageNick":Ljava/lang/String;
    .end local v26    # "name":Ljava/lang/String;
    :cond_4
    move-object/from16 v27, v12

    goto :goto_2

    .line 255
    .end local v0    # "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_5
    move-object/from16 v27, v12

    .line 279
    .end local v17    # "topPage":Lcom/alipay/mobile/h5container/api/H5Page;
    :goto_2
    move-object/from16 v12, v18

    move-object/from16 v11, v19

    move-object/from16 v0, v20

    goto :goto_3

    .line 242
    .end local v18    # "title":Ljava/lang/String;
    .end local v19    # "userAgent":Ljava/lang/String;
    .end local v20    # "sessionId":Ljava/lang/String;
    .restart local v6    # "sessionId":Ljava/lang/String;
    .local v7, "title":Ljava/lang/String;
    .local v8, "userAgent":Ljava/lang/String;
    :cond_6
    move-object/from16 v27, v12

    move-object v0, v6

    move-object v12, v7

    move-object v11, v8

    .line 279
    .end local v6    # "sessionId":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "userAgent":Ljava/lang/String;
    .local v0, "sessionId":Ljava/lang/String;
    .local v11, "userAgent":Ljava/lang/String;
    .local v12, "title":Ljava/lang/String;
    :goto_3
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->h:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-interface {v6, v13, v12}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->h:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-interface {v6, v13, v11}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setUserAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->h:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-interface {v6, v13, v14}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setPageUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->h:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-interface {v6, v13, v0}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setSessionId(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v6, "OnReportConsoleMessage"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 286
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->h:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const-string v7, "log"

    invoke-interface {v6, v7, v13, v4, v15}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->consoleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 287
    :cond_7
    move-object/from16 v6, v27

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 288
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->h:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const/4 v15, 0x0

    const-string v7, "create"

    move-object v8, v13

    move-object v9, v11

    move-object v10, v14

    move-object/from16 v19, v11

    .end local v11    # "userAgent":Ljava/lang/String;
    .restart local v19    # "userAgent":Ljava/lang/String;
    move-object v11, v12

    move-object/from16 v18, v12

    .end local v12    # "title":Ljava/lang/String;
    .restart local v18    # "title":Ljava/lang/String;
    move-object v12, v15

    invoke-interface/range {v6 .. v12}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->pageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    return-void

    .line 289
    .end local v18    # "title":Ljava/lang/String;
    .end local v19    # "userAgent":Ljava/lang/String;
    .restart local v11    # "userAgent":Ljava/lang/String;
    .restart local v12    # "title":Ljava/lang/String;
    :cond_8
    move-object/from16 v19, v11

    move-object/from16 v18, v12

    .end local v11    # "userAgent":Ljava/lang/String;
    .end local v12    # "title":Ljava/lang/String;
    .restart local v18    # "title":Ljava/lang/String;
    .restart local v19    # "userAgent":Ljava/lang/String;
    const-string v6, "onStopped"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 290
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->h:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const/4 v12, 0x0

    const-string v7, "destroy"

    move-object v8, v13

    move-object/from16 v9, v19

    move-object v10, v14

    move-object/from16 v11, v18

    invoke-interface/range {v6 .. v12}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->pageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    return-void

    .line 291
    :cond_9
    const-string v6, "OnReportException"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 292
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Worker OnReportException: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "H5BugMeManagerImpl"

    invoke-static {v7, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->h:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const-string v7, "error"

    invoke-interface {v6, v7, v13, v4, v15}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->consoleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_a
    return-void
.end method

.method private b()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->g:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "H5BugMeManagerImpl"

    const-string v1, "release DevPlugin & BugMeProvider"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->removeProvider(Ljava/lang/String;)Z

    .line 84
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->g:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->unregister(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->g:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    .line 86
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->h:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public hasAccessToDebug(Ljava/lang/String;)Z
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 130
    return v1

    .line 133
    :cond_0
    const-string v0, "h5_bug_me_super_user"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->purifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "pureUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->b:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    move-object v4, v3

    .line 138
    .local v4, "cached":Ljava/lang/Boolean;
    move-object v4, v2

    if-eqz v2, :cond_2

    .line 139
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 141
    :cond_2
    const/4 v2, 0x0

    .line 142
    .local v2, "isInWhiteList":Z
    const-string v5, "h5_bug_me_debug_switch"

    invoke-static {v5, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 143
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->a:[Ljava/lang/String;

    if-eqz v5, :cond_4

    array-length v6, v5

    if-ge v1, v6, :cond_4

    .line 144
    aget-object v5, v5, v1

    .line 145
    .local v3, "domain":Ljava/lang/String;
    move-object v3, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 146
    const/4 v2, 0x1

    .line 143
    .end local v3    # "domain":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->b:Landroid/util/LruCache;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return v2
.end method

.method public logServiceWorkerOnReceiveValue(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/util/HashMap;
    .param p2, "workerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, "hasAccess":Z
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->h:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "url"

    if-nez v1, :cond_3

    .line 194
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v1

    if-nez v1, :cond_4

    .line 195
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->e:Z

    if-nez v1, :cond_2

    .line 196
    const-class v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 198
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    const/4 v3, 0x0

    .line 199
    .local v3, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v3, v1

    if-eqz v1, :cond_1

    .line 200
    const-class v1, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 201
    invoke-virtual {v3, v1}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 203
    .local v1, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->hasAccessToDebug(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->f:Z

    .line 205
    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->setUp()V

    .line 208
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->e:Z

    .line 210
    .end local v1    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    .end local v3    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_1
    goto :goto_0

    .line 212
    :cond_2
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->f:Z

    move v0, v1

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->hasAccessToDebug(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    .line 220
    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->a(Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    .end local v0    # "hasAccess":Z
    :cond_5
    return-void

    .line 223
    :catchall_0
    move-exception v0

    .line 224
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5BugMeManagerImpl"

    const-string v2, "CORE_EVENT_CONSOLE_CALLBACK"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method public onBugMeSwitched(Z)V
    .locals 4
    .param p1, "debugSwitch"    # Z

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->i:Z

    .line 175
    if-eqz p1, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->a()V

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->b:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->h:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    if-eqz v0, :cond_1

    .line 179
    const-string v1, "NebulaSDK"

    const-string v2, "welcome"

    const-string v3, "welcome to Hybrid Inspector"

    invoke-interface {v0, v1, v2, v1, v3}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->welcome(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->release()V

    .line 184
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/data/H5Trace;->setEnabled(Z)V

    .line 185
    return-void
.end method

.method public openSettingPanel(Z)V
    .locals 4
    .param p1, "fromOpenPlatform"    # Z

    .line 158
    if-eqz p1, :cond_0

    .line 159
    const-string v0, "h5_bug_me_show_icon"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setBooleanConfig(Ljava/lang/String;Z)V

    .line 160
    const-string v0, "h5_bug_me_super_user"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setBooleanConfig(Ljava/lang/String;Z)V

    .line 164
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 165
    .local v2, "intent":Landroid/content/Intent;
    move-object v2, v0

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v2    # "intent":Landroid/content/Intent;
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5BugMeManagerImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public release()V
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->c:Z

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->b()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->b:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->a:[Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->resetBugMeSettings()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->d:Z

    .line 99
    return-void
.end method

.method public setDomainWhiteList([Ljava/lang/String;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->a:[Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->b:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 125
    return-void
.end method

.method public setUp()V
    .locals 2

    .line 51
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->d:Z

    if-eqz v0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    const-string v0, "H5BugMeManagerImpl"

    const-string v1, "setUpBugMe"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->i:Z

    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->resetBugMeSettings()V

    .line 64
    :cond_1
    const/4 v0, 0x0

    const-string v1, "h5_bug_me_debug_switch"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->c:Z

    if-eqz v0, :cond_3

    .line 65
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->a()V

    .line 67
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->d:Z

    .line 68
    return-void
.end method

.method public setWebViewDebugging(Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    const/4 v1, 0x0

    move v2, v1

    .line 108
    .local v2, "canDebug":Z
    move v2, v0

    if-nez v0, :cond_1

    .line 110
    const-string v0, "h5_bug_me_wired_debug"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    .line 111
    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeManagerImpl;->hasAccessToDebug(Ljava/lang/String;)Z

    move-result v2

    .line 116
    :cond_1
    if-eqz v2, :cond_2

    .line 117
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 119
    :cond_2
    return-void

    .line 104
    .end local v2    # "canDebug":Z
    :cond_3
    :goto_0
    return-void
.end method

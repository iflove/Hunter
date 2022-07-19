.class public Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
.super Ljava/lang/Object;
.source "H5FragmentManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5FragmentManager"


# instance fields
.field private a:Landroidx/fragment/app/FragmentManager;

.field private b:I

.field private c:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

.field private e:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 1
    .param p1, "activity"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 56
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->a:Landroidx/fragment/app/FragmentManager;

    .line 57
    sget v0, Lcom/alipay/mobile/nebula/R$id;->h5_fragment:I

    iput v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->b:I

    .line 58
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;)Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 336
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 401
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "funcName"    # Ljava/lang/String;

    .line 574
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6253\u5370\u8c03\u7528\u5806\u6808\uff08\u4e0d\u662f\u95ea\u9000\uff09\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "funcName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    .restart local p1    # "funcName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " track "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5FragmentManager"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 578
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method


# virtual methods
.method public addFragment(Landroid/os/Bundle;ZZ)V
    .locals 19
    .param p1, "startParam"    # Landroid/os/Bundle;
    .param p2, "withAnim"    # Z
    .param p3, "useTranslateAnim"    # Z

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v0, "url"

    const-string v9, "H5FragmentManager"

    .line 71
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addFragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "isTinyApp"

    .line 73
    const/4 v2, 0x0

    invoke-static {v8, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    move v3, v2

    .line 74
    .local v3, "isTinyApp":Z
    move v10, v1

    .end local v3    # "isTinyApp":Z
    .local v10, "isTinyApp":Z
    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v11, v1

    .line 78
    .local v11, "mode":I
    const-string v1, "fromRelaunch"

    invoke-static {v8, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v12, v1

    .line 79
    .local v12, "fromRelaunch":Z
    const/4 v1, 0x1

    if-nez v12, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    and-int v13, p3, v3

    .line 81
    .end local p3    # "useTranslateAnim":Z
    .local v13, "useTranslateAnim":Z
    :try_start_1
    iget-object v3, v7, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->canUsePreRender()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "isPrerender"

    if-eqz v3, :cond_b

    if-nez v12, :cond_b

    .line 82
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v3

    const/4 v5, 0x0

    move-object v6, v5

    .line 83
    .local v6, "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    move-object v14, v3

    .end local v6    # "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    .local v14, "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 85
    invoke-virtual {v8, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    :cond_2
    invoke-virtual {v14, v8, v11}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->containsPoolKey(Landroid/os/Bundle;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 89
    invoke-virtual {v14, v8, v11}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragment(Landroid/os/Bundle;I)Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-result-object v3

    move-object v6, v5

    .line 90
    .local v6, "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    move-object v15, v3

    .end local v6    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .local v15, "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v15}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v6, v7, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-ne v3, v6, :cond_b

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "##h5prerender## get prerender fragment by mode "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v15}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    move-object v6, v3

    .line 95
    .local v6, "preStartParam":Landroid/os/Bundle;
    invoke-virtual {v14, v15}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getCurrentIndex(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)I

    move-result v3

    .line 96
    .local v3, "currentIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "##h5prerender## currentIndex "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v6, v2}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->putPreFragmentBundle(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 98
    if-eqz v10, :cond_9

    .line 99
    const-string v2, "h5_preRenderConfig"

    .line 100
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 101
    .local v2, "enablePrerenderConfig":Lcom/alibaba/fastjson/JSONObject;
    const-string v5, "YES"

    const-string v1, "shouldUsePreRender"

    .line 102
    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 103
    if-eqz v1, :cond_8

    .line 104
    invoke-virtual {v6}, Landroid/os/Bundle;->clear()V

    .line 105
    invoke-virtual {v6, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 106
    const-string v1, "scrollDistance"

    const/4 v5, 0x1

    invoke-static {v8, v1, v5}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 108
    invoke-virtual {v15}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    .line 109
    .local v1, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-virtual {v15}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getRootViewHolder()Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    move-result-object v5

    const/16 v16, 0x0

    move-object/from16 v17, v16

    .line 110
    .local v17, "h5ViewHolder":Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    move-object/from16 v17, v5

    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    .line 111
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v5

    move-object/from16 v18, v16

    .line 112
    .local v18, "h5NavigationBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    move-object/from16 v16, v5

    .end local v18    # "h5NavigationBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .local v16, "h5NavigationBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    if-eqz v5, :cond_3

    .line 113
    move-object/from16 v5, v16

    .end local v16    # "h5NavigationBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .local v5, "h5NavigationBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    invoke-virtual {v5, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setPage(Lcom/alipay/mobile/h5container/api/H5Page;)V

    goto :goto_2

    .line 112
    .end local v5    # "h5NavigationBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .restart local v16    # "h5NavigationBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    :cond_3
    move-object/from16 v5, v16

    .line 115
    .end local v16    # "h5NavigationBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .restart local v5    # "h5NavigationBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v16

    const/16 v18, 0x0

    .line 116
    .local v18, "h5WebContent":Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    move-object/from16 v18, v16

    if-eqz v16, :cond_4

    .line 117
    invoke-virtual/range {v18 .. v18}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->refreshView()V

    .line 119
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->refreshView()V

    goto :goto_3

    .line 110
    .end local v5    # "h5NavigationBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .end local v18    # "h5WebContent":Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    :cond_5
    move-object/from16 v18, v16

    .line 122
    move-object/from16 v5, v18

    :goto_3
    if-eqz v1, :cond_7

    .line 123
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v16

    move-object/from16 p3, v2

    .end local v2    # "enablePrerenderConfig":Lcom/alibaba/fastjson/JSONObject;
    .local p3, "enablePrerenderConfig":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v2, v16

    check-cast v2, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 124
    .local v5, "webView":Lcom/alipay/mobile/nebulacore/web/H5WebView;
    move-object v5, v2

    move/from16 v16, v3

    .end local v3    # "currentIndex":I
    .local v16, "currentIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "javascript:location.replace(\'"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\');"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 126
    move-object v2, v1

    check-cast v2, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 127
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    move-result-object v2

    move-object/from16 v3, v18

    .line 128
    .local v3, "scriptLoader":Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;
    move-object v3, v2

    if-eqz v2, :cond_6

    .line 129
    const-string v2, "startupParams"

    .line 130
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v7

    .line 129
    invoke-virtual {v3, v2, v7}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->setParamsToWebPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_6
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v2

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->onPageStarted(Ljava/lang/String;)V

    .line 133
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setCreateScenario(I)V

    .line 134
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setFunctionHasCallback(I)V

    .line 135
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isShowTransAnimate(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 136
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v0

    const-string v2, "backgroundColor"

    .line 137
    invoke-static {v6, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v2

    .line 136
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 122
    .end local v5    # "webView":Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .end local v16    # "currentIndex":I
    .end local p3    # "enablePrerenderConfig":Lcom/alibaba/fastjson/JSONObject;
    .restart local v2    # "enablePrerenderConfig":Lcom/alibaba/fastjson/JSONObject;
    .local v3, "currentIndex":I
    :cond_7
    move-object/from16 p3, v2

    move/from16 v16, v3

    .end local v2    # "enablePrerenderConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "currentIndex":I
    .restart local v16    # "currentIndex":I
    .restart local p3    # "enablePrerenderConfig":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_4

    .line 103
    .end local v1    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v16    # "currentIndex":I
    .end local v17    # "h5ViewHolder":Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    .end local p3    # "enablePrerenderConfig":Lcom/alibaba/fastjson/JSONObject;
    .restart local v2    # "enablePrerenderConfig":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "currentIndex":I
    :cond_8
    move-object/from16 p3, v2

    move/from16 v16, v3

    .end local v2    # "enablePrerenderConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "currentIndex":I
    .restart local v16    # "currentIndex":I
    .restart local p3    # "enablePrerenderConfig":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_4

    .line 98
    .end local v16    # "currentIndex":I
    .end local p3    # "enablePrerenderConfig":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "currentIndex":I
    :cond_9
    move/from16 v16, v3

    .line 142
    .end local v3    # "currentIndex":I
    .restart local v16    # "currentIndex":I
    :cond_a
    :goto_4
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 143
    const/4 v3, 0x1

    move-object/from16 v1, p0

    move-object v2, v15

    move/from16 v0, v16

    .end local v16    # "currentIndex":I
    .local v0, "currentIndex":I
    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object v7, v6

    .end local v6    # "preStartParam":Landroid/os/Bundle;
    .local v7, "preStartParam":Landroid/os/Bundle;
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->pushFragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;ZLandroid/os/Bundle;ZZ)Z

    .line 144
    return-void

    .line 149
    .end local v0    # "currentIndex":I
    .end local v7    # "preStartParam":Landroid/os/Bundle;
    .end local v14    # "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    .end local v15    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :cond_b
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 150
    const-string v0, "bizType"

    const-string v1, ""

    invoke-static {v8, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "bizType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 152
    .local v1, "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    invoke-static {v0}, Lcom/alipay/mobile/h5container/service/RnService;->isRnBiz(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 153
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getRnService()Lcom/alipay/mobile/h5container/service/RnService;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 154
    new-instance v2, Lcom/alipay/mobile/nebulacore/ui/RNFragment;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulacore/ui/RNFragment;-><init>()V

    move-object v1, v2

    goto :goto_5

    .line 156
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/ui/RNFragment;->resetToH5FragmentBundle(Landroid/os/Bundle;)V

    .line 159
    :cond_d
    :goto_5
    if-nez v1, :cond_e

    .line 160
    new-instance v2, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;-><init>()V

    move-object v1, v2

    move-object v7, v1

    goto :goto_6

    .line 159
    :cond_e
    move-object v7, v1

    .line 162
    .end local v1    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .local v7, "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :goto_6
    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 163
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v4, p1

    move/from16 v5, p2

    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->pushFragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;ZLandroid/os/Bundle;ZZ)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 166
    nop

    .end local v0    # "bizType":Ljava/lang/String;
    .end local v7    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .end local v10    # "isTinyApp":Z
    .end local v11    # "mode":I
    .end local v12    # "fromRelaunch":Z
    return-void

    .line 164
    :catch_0
    move-exception v0

    goto :goto_7

    .end local v13    # "useTranslateAnim":Z
    .local p3, "useTranslateAnim":Z
    :catch_1
    move-exception v0

    move/from16 v13, p3

    .line 165
    .end local p3    # "useTranslateAnim":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v13    # "useTranslateAnim":Z
    :goto_7
    const-string v1, "catch exception "

    invoke-static {v9, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public declared-synchronized addPreFragment(Landroid/os/Bundle;I)V
    .locals 7
    .param p1, "startParam"    # Landroid/os/Bundle;
    .param p2, "mode"    # I

    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 171
    monitor-exit p0

    return-void

    .line 173
    :cond_0
    :try_start_1
    const-string v0, "H5FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addPreFragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v0

    const/4 v1, 0x0

    .line 175
    .local v1, "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    move-object v1, v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->containsPoolKey(Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 176
    const-string v0, "bizType"

    const-string v2, ""

    invoke-static {p1, v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "bizType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 178
    .local v2, "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    invoke-static {v0}, Lcom/alipay/mobile/h5container/service/RnService;->isRnBiz(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 179
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getRnService()Lcom/alipay/mobile/h5container/service/RnService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 180
    new-instance v3, Lcom/alipay/mobile/nebulacore/ui/RNFragment;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/ui/RNFragment;-><init>()V

    move-object v2, v3

    goto :goto_0

    .line 182
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/ui/RNFragment;->resetToH5FragmentBundle(Landroid/os/Bundle;)V

    .line 185
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 186
    new-instance v3, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;-><init>()V

    move-object v2, v3

    .line 188
    :cond_3
    const-string v3, "H5FragmentManager"

    const-string v4, "##h5prerender## did addPreFragment"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 190
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    .local v3, "transaction":Landroidx/fragment/app/FragmentTransaction;
    :try_start_2
    iget v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->b:I

    invoke-virtual {v3, v4, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 193
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    goto :goto_1

    .line 194
    :catchall_0
    move-exception v4

    .line 195
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v5, "H5FragmentManager"

    const-string v6, "catch fragment exception "

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v1, p1, v2}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->putPreFragment(Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 199
    .end local v0    # "bizType":Ljava/lang/String;
    .end local v2    # "h5Fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .end local v3    # "transaction":Landroidx/fragment/app/FragmentTransaction;
    :cond_4
    monitor-exit p0

    return-void

    .line 169
    .end local v1    # "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    .end local p1    # "startParam":Landroid/os/Bundle;
    .end local p2    # "mode":I
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public attachFragment(Landroidx/fragment/app/Fragment;ZZ)Z
    .locals 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "withAnim"    # Z
    .param p3, "useTranslateAnim"    # Z

    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 405
    const-string v0, "H5FragmentManager"

    const-string v2, "activity is finishing"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return v1

    .line 409
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 413
    :cond_1
    const-string v0, "attachFragment"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->a(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 415
    .local v0, "transaction":Landroidx/fragment/app/FragmentTransaction;
    if-eqz p2, :cond_3

    .line 416
    if-eqz p3, :cond_2

    .line 417
    sget v2, Lcom/alipay/mobile/nebula/R$anim;->h5_translate_in_right:I

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 419
    :cond_2
    sget v1, Lcom/alipay/mobile/nebula/R$anim;->h5_tabswitch_in:I

    sget v2, Lcom/alipay/mobile/nebula/R$anim;->h5_tabswitch_out:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 422
    :cond_3
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 423
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->e:Landroidx/fragment/app/Fragment;

    .line 424
    const/4 v1, 0x1

    return v1

    .line 410
    .end local v0    # "transaction":Landroidx/fragment/app/FragmentTransaction;
    :cond_4
    :goto_1
    return v1
.end method

.method public clearPreFragment(II)V
    .locals 10
    .param p1, "location"    # I
    .param p2, "length"    # I

    .line 550
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v0

    .line 551
    .local v0, "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clearPreFragment location "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5FragmentManager"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentList()Ljava/util/List;

    move-result-object v1

    .line 553
    .local v1, "preFragmentList":Ljava/util/List;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreParamContentList()Ljava/util/List;

    move-result-object v2

    .line 554
    .local v2, "preParamContentList":Ljava/util/List;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreUrlList()Ljava/util/List;

    move-result-object v3

    .line 555
    .local v3, "preUrlList":Ljava/util/List;
    move v4, p1

    .local v4, "i":I
    :goto_0
    if-gt v4, p2, :cond_3

    .line 556
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 557
    .local v5, "size4Fragment":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 558
    .local v6, "size4Content":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 559
    .local v7, "size4Url":I
    if-ltz p1, :cond_0

    if-ge p1, v5, :cond_0

    .line 560
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/Fragment;

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->detachFragment(Landroidx/fragment/app/Fragment;Z)Z

    .line 561
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 563
    :cond_0
    if-ltz p1, :cond_1

    if-ge p1, v6, :cond_1

    .line 564
    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 566
    :cond_1
    if-ltz p1, :cond_2

    if-ge p1, v7, :cond_2

    .line 567
    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 555
    .end local v5    # "size4Fragment":I
    .end local v6    # "size4Content":I
    .end local v7    # "size4Url":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 570
    .end local v4    # "i":I
    :cond_3
    return-void
.end method

.method public detachFragment(Landroidx/fragment/app/Fragment;Z)Z
    .locals 5
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "withTranslateAnim"    # Z

    .line 428
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v0

    const-string v1, "H5FragmentManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 429
    const-string v0, "activity is finishing"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return v2

    .line 433
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 437
    :cond_1
    const-string v0, "detachFragment"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->a(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 439
    .local v0, "transaction":Landroidx/fragment/app/FragmentTransaction;
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 441
    const-string v4, "delayRender"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentTransaction;)V

    const-wide/16 v2, 0x258

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 453
    :cond_2
    if-eqz p2, :cond_3

    .line 454
    :try_start_0
    sget v3, Lcom/alipay/mobile/nebula/R$anim;->h5_translate_out_left:I

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 456
    :cond_3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    goto :goto_0

    .line 457
    :catchall_0
    move-exception v2

    .line 458
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 462
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 434
    .end local v0    # "transaction":Landroidx/fragment/app/FragmentTransaction;
    :cond_4
    :goto_1
    return v2
.end method

.method public getCurrentFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->e:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getFragmentCount()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public peekFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0

    .line 203
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pushFragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;ZLandroid/os/Bundle;ZZ)Z
    .locals 7

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 210
    return v1

    .line 213
    :cond_0
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_16

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "H5FragmentManager"

    const/4 v4, 0x1

    if-nez v0, :cond_9

    .line 219
    nop

    .line 220
    nop

    .line 222
    const-string v0, "sessionId"

    invoke-static {p3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 223
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSession(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object p3

    .line 224
    instance-of v0, p3, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v0, :cond_3

    check-cast p3, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 225
    invoke-virtual {p3}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 226
    nop

    .line 227
    invoke-virtual {p3}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getCurrentFragment()Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-result-object v0

    .line 228
    nop

    .line 229
    invoke-virtual {p3}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getTabFragments()Ljava/util/Map;

    move-result-object p3

    goto :goto_0

    .line 232
    :cond_3
    move-object p3, v2

    move-object v0, p3

    :goto_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 234
    const-string v6, "pushwindow animation old webview onPause "

    if-eqz p3, :cond_6

    invoke-interface {p3, v5}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 236
    if-eqz p4, :cond_5

    if-eqz p5, :cond_5

    .line 237
    if-eqz v0, :cond_4

    iget-object p3, v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz p3, :cond_4

    .line 238
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->setShouldResumeWebView(Z)V

    .line 240
    iget-object p3, v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {p3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onPause()V

    .line 242
    :cond_4
    invoke-virtual {p0, v0, v4}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->detachFragment(Landroidx/fragment/app/Fragment;Z)Z

    goto :goto_1

    .line 244
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->detachFragment(Landroidx/fragment/app/Fragment;Z)Z

    goto :goto_1

    .line 248
    :cond_6
    if-eqz p4, :cond_8

    if-eqz p5, :cond_8

    .line 249
    if-eqz v5, :cond_7

    instance-of p3, v5, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    if-eqz p3, :cond_7

    move-object p3, v5

    check-cast p3, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    iget-object v0, p3, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_7

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p3, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p3, v4}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->setShouldResumeWebView(Z)V

    .line 252
    iget-object p3, p3, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {p3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onPause()V

    .line 254
    :cond_7
    invoke-virtual {p0, v5, v4}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->detachFragment(Landroidx/fragment/app/Fragment;Z)Z

    goto :goto_1

    .line 256
    :cond_8
    invoke-virtual {p0, v5, v1}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->detachFragment(Landroidx/fragment/app/Fragment;Z)Z

    .line 261
    :cond_9
    :goto_1
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {p3, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    .line 262
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {p3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_a
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->canUsePreRender()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 266
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->containsPoolKey(Landroid/os/Bundle;I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_2

    :cond_b
    const/4 v0, 0x0

    .line 268
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "preRender:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isAdded():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isAdded()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isContainKey:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    if-eqz v0, :cond_12

    if-eqz p2, :cond_12

    .line 271
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 272
    return v1

    .line 274
    :cond_c
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object p2

    .line 275
    if-eqz p2, :cond_d

    .line 276
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setContainerVisible(J)V

    .line 279
    :cond_d
    if-eqz p4, :cond_f

    .line 280
    if-eqz p5, :cond_e

    .line 281
    const-string p4, "fragment use translate anim. preRender"

    invoke-static {v3, p4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1, v4}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->setUseTranslateAnim(Z)V

    .line 283
    sget p4, Lcom/alipay/mobile/nebula/R$anim;->h5_translate_in_left:I

    invoke-virtual {p3, p4, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_3

    .line 285
    :cond_e
    sget p4, Lcom/alipay/mobile/nebula/R$anim;->h5_tabswitch_in:I

    sget p5, Lcom/alipay/mobile/nebula/R$anim;->h5_tabswitch_out:I

    invoke-virtual {p3, p4, p5}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 289
    :cond_f
    :goto_3
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->setTabbarVisible()V

    .line 290
    invoke-virtual {p3, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 291
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->e:Landroidx/fragment/app/Fragment;

    .line 292
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object p3

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->removeFragment(Landroid/os/Bundle;)V

    .line 294
    if-eqz p2, :cond_10

    .line 295
    const-string p3, "injectPageReady when prerender window present"

    invoke-static {v3, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    check-cast p2, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->injectPageReady()V

    .line 298
    :cond_10
    nop

    .line 299
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "isTinyApp"

    invoke-static {p2, p3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p2

    .line 300
    if-eqz p2, :cond_11

    .line 301
    const-string p2, "H5_PRERENDER_BINGO"

    invoke-static {p2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p2

    .line 302
    invoke-virtual {p2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p2

    .line 301
    invoke-static {p2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 304
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->a(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V

    .line 307
    :cond_11
    const-string p1, " preRender hit show."

    invoke-static {v3, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    goto :goto_5

    .line 309
    :cond_12
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 310
    return v1

    .line 312
    :cond_13
    const-string p2, " add fragment"

    invoke-static {v3, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    if-eqz p4, :cond_15

    .line 318
    if-eqz p5, :cond_14

    .line 319
    :try_start_0
    const-string p2, "fragment use translate anim."

    invoke-static {v3, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p1, v4}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->setUseTranslateAnim(Z)V

    .line 321
    sget p2, Lcom/alipay/mobile/nebula/R$anim;->h5_translate_in_left:I

    invoke-virtual {p3, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_4

    .line 323
    :cond_14
    sget p2, Lcom/alipay/mobile/nebula/R$anim;->h5_tabswitch_in:I

    sget p4, Lcom/alipay/mobile/nebula/R$anim;->h5_tabswitch_out:I

    invoke-virtual {p3, p2, p4}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 326
    :cond_15
    :goto_4
    iget p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->b:I

    invoke-virtual {p3, p2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 327
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->e:Landroidx/fragment/app/Fragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    goto :goto_5

    .line 328
    :catchall_0
    move-exception p1

    .line 329
    const-string p2, "catch fragment exception "

    invoke-static {v3, p2, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    :goto_5
    return v4

    .line 214
    :cond_16
    :goto_6
    return v1
.end method

.method public removeFragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;Landroid/os/Bundle;Z)Z
    .locals 12
    .param p1, "t"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .param p2, "param"    # Landroid/os/Bundle;
    .param p3, "exitTabScene"    # Z

    .line 466
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v0

    const-string v1, "H5FragmentManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 467
    const-string v0, "activity is finishing"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    return v2

    .line 470
    :cond_0
    if-nez p1, :cond_1

    .line 471
    return v2

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->canUsePreRender()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 476
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->containsPoolKey(Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 477
    return v2

    .line 481
    :cond_2
    const-string v0, "sessionId"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "sessionId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSession(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v4

    .local v4, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    move v5, v2

    .line 484
    .local v5, "countTabFragments":I
    const/4 v6, 0x0

    .line 485
    .local v6, "tabTopFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    const/4 v7, 0x0

    .line 487
    .local v7, "tabFragments":Ljava/util/Map;
    instance-of v8, v4, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v8, :cond_3

    move-object v8, v4

    check-cast v8, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 488
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 489
    move-object v8, v4

    check-cast v8, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 490
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->countTabFragments()I

    move-result v5

    .line 491
    move-object v8, v4

    check-cast v8, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 493
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getCurrentFragment()Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-result-object v6

    .line 494
    move-object v8, v4

    check-cast v8, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 496
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getTabFragments()Ljava/util/Map;

    move-result-object v7

    .line 497
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    if-ne v8, v5, :cond_3

    if-nez p3, :cond_3

    .line 498
    return v2

    .line 503
    :cond_3
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    if-gt v8, v3, :cond_4

    .line 505
    return v2

    .line 507
    :cond_4
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 508
    return v3

    .line 512
    :cond_5
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_6

    const/4 v8, 0x1

    goto :goto_0

    :cond_6
    const/4 v8, 0x0

    .line 513
    .local v8, "top":Z
    :goto_0
    if-eqz v7, :cond_7

    invoke-interface {v7, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz p3, :cond_a

    .line 515
    :cond_7
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v9}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v9

    .line 516
    .local v9, "transaction":Landroidx/fragment/app/FragmentTransaction;
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isUseTranslateAnim()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 517
    iget-object v10, p1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v10, :cond_8

    .line 518
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "pushwindow animation new webview onPause "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v1, p1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onPause()V

    .line 521
    :cond_8
    sget v1, Lcom/alipay/mobile/nebula/R$anim;->h5_translate_out_right:I

    invoke-virtual {v9, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 523
    :cond_9
    invoke-virtual {v9, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 524
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 527
    .end local v9    # "transaction":Landroidx/fragment/app/FragmentTransaction;
    :cond_a
    if-eqz v8, :cond_e

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 528
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 529
    .local v1, "topFragment":Landroidx/fragment/app/Fragment;
    if-eqz v7, :cond_c

    .line 530
    invoke-interface {v7, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 532
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isUseTranslateAnim()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 533
    invoke-virtual {p0, v6, v3, v3}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->attachFragment(Landroidx/fragment/app/Fragment;ZZ)Z

    goto :goto_1

    .line 535
    :cond_b
    invoke-virtual {p0, v6, v2, v2}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->attachFragment(Landroidx/fragment/app/Fragment;ZZ)Z

    goto :goto_1

    .line 539
    :cond_c
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isUseTranslateAnim()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 540
    invoke-virtual {p0, v1, v3, v3}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->attachFragment(Landroidx/fragment/app/Fragment;ZZ)Z

    goto :goto_1

    .line 542
    :cond_d
    invoke-virtual {p0, v1, v2, v2}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->attachFragment(Landroidx/fragment/app/Fragment;ZZ)Z

    .line 546
    .end local v1    # "topFragment":Landroidx/fragment/app/Fragment;
    :cond_e
    :goto_1
    return v3
.end method

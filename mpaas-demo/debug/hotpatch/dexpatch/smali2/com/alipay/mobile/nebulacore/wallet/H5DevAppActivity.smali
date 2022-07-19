.class public Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;
.super Lcom/alipay/mobile/nebula/activity/H5BaseActivity;
.source "H5DevAppActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->a:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 7
    .param p1, "schemeUri"    # Landroid/net/Uri;
    .param p2, "domainWhiteList"    # [Ljava/lang/String;

    .line 133
    if-nez p1, :cond_0

    .line 134
    return-void

    .line 137
    :cond_0
    move-object v0, p1

    .line 139
    .local v0, "targetUri":Landroid/net/Uri;
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->b:Z

    if-eqz v1, :cond_2

    .line 140
    const-string v1, ""

    .line 141
    .local v1, "whiteList":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 142
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p2, v3

    .line 143
    .local v4, "domain":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .end local v4    # "domain":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->b:Z

    .line 148
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enableBugme"

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 149
    const-string v3, "domainWhiteList"

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 139
    .end local v1    # "whiteList":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .line 153
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 154
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 155
    .local v1, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    move-object v1, v2

    if-eqz v2, :cond_3

    .line 156
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;)Z

    .line 158
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # [Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->a(Landroid/net/Uri;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "key"    # Ljava/lang/String;

    .line 125
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 126
    .local v2, "value":Ljava/lang/String;
    move-object v2, v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    return-object v2

    .line 129
    :cond_0
    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    move-object/from16 v6, p0

    invoke-super/range {p0 .. p1}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->setRequestedOrientation(I)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "H5DevAppActivity onCreate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5BugMeDevApp"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 39
    .local v13, "token":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scheme"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 40
    .local v2, "scheme":Ljava/lang/String;
    move-object v10, v0

    .end local v2    # "scheme":Ljava/lang/String;
    .local v10, "scheme":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 42
    .local v2, "schemeUri":Landroid/net/Uri;
    move-object v14, v0

    .end local v2    # "schemeUri":Landroid/net/Uri;
    .local v14, "schemeUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->finish()V

    .line 44
    return-void

    .line 47
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "enableBugme"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->b:Z

    .line 48
    const-string v0, "appId"

    invoke-virtual {v6, v14, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->getValue(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->a:Ljava/lang/String;

    .line 50
    const-string v0, "nbsource"

    invoke-virtual {v6, v14, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->getValue(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 51
    .local v15, "nbsource":Ljava/lang/String;
    const-string v0, "nbsn"

    invoke-virtual {v6, v14, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->getValue(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 52
    .local v12, "nbsn":Ljava/lang/String;
    const-string v0, "nbsv"

    invoke-virtual {v6, v14, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->getValue(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 54
    .local v11, "nbsv":Ljava/lang/String;
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;-><init>()V

    move-object v2, v1

    .line 55
    .local v2, "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    move-object v9, v0

    .end local v2    # "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    .local v9, "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    iput-object v12, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsn:Ljava/lang/String;

    .line 56
    iput-object v11, v9, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsv:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "devAppId "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nbsource:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nbsn:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nbsv:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enableBugme:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v6, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H5BaseActivity"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "debug"

    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    .line 63
    .local v16, "containDebug":Z
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 64
    const-string v2, "h5_read_use_dev_app_config"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v16, :cond_1

    .line 66
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    iget-object v2, v6, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->add(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;)V

    .line 67
    invoke-direct {v6, v14, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->a(Landroid/net/Uri;[Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->finish()V

    .line 69
    return-void

    .line 74
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;

    move-object v2, v1

    .line 75
    .local v2, "h5LoadingDialog":Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;
    move-object v8, v0

    .end local v2    # "h5LoadingDialog":Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;
    .local v8, "h5LoadingDialog":Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;
    if-eqz v0, :cond_2

    .line 76
    const-string v0, "\u8bf7\u6c42\u6570\u636e\u4e2d"

    invoke-interface {v8, v6, v0}, Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;->showLoading(Landroid/app/Activity;Ljava/lang/String;)V

    .line 80
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;

    .line 81
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;

    .line 82
    .local v1, "bugMeRpcAuthProvider":Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;
    move-object v7, v0

    .end local v1    # "bugMeRpcAuthProvider":Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;
    .local v7, "bugMeRpcAuthProvider":Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;
    if-eqz v0, :cond_3

    .line 83
    iget-object v5, v6, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->a:Ljava/lang/String;

    new-instance v17, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v8

    move/from16 v3, v16

    move-object v4, v9

    move-object/from16 v18, v5

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;ZLcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;Landroid/net/Uri;)V

    move-object v0, v8

    .end local v8    # "h5LoadingDialog":Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;
    .local v0, "h5LoadingDialog":Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;
    move-object/from16 v8, v18

    move-object v1, v9

    .end local v9    # "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    .local v1, "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    move-object v9, v12

    move-object v2, v11

    .end local v11    # "nbsv":Ljava/lang/String;
    .local v2, "nbsv":Ljava/lang/String;
    move-object v11, v13

    move-object v3, v12

    .end local v12    # "nbsn":Ljava/lang/String;
    .local v3, "nbsn":Ljava/lang/String;
    move-object/from16 v12, v17

    invoke-interface/range {v7 .. v12}, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;->rpcAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;)V

    goto :goto_0

    .line 82
    .end local v0    # "h5LoadingDialog":Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;
    .end local v1    # "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    .end local v2    # "nbsv":Ljava/lang/String;
    .end local v3    # "nbsn":Ljava/lang/String;
    .restart local v8    # "h5LoadingDialog":Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;
    .restart local v9    # "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    .restart local v11    # "nbsv":Ljava/lang/String;
    .restart local v12    # "nbsn":Ljava/lang/String;
    :cond_3
    move-object v0, v8

    move-object v1, v9

    move-object v2, v11

    move-object v3, v12

    .line 122
    .end local v8    # "h5LoadingDialog":Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;
    .end local v9    # "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    .end local v11    # "nbsv":Ljava/lang/String;
    .end local v12    # "nbsn":Ljava/lang/String;
    .restart local v0    # "h5LoadingDialog":Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;
    .restart local v1    # "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    .restart local v2    # "nbsv":Ljava/lang/String;
    .restart local v3    # "nbsn":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 168
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onDestroy()V

    .line 169
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 162
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onResume()V

    .line 163
    const-string v0, "H5BugMeDevApp"

    const-string v1, "H5DevAppActivity onResume "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

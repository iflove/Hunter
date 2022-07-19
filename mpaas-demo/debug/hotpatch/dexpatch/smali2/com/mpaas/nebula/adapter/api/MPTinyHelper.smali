.class public Lcom/mpaas/nebula/adapter/api/MPTinyHelper;
.super Ljava/lang/Object;
.source "MPTinyHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MPTinyHelper"

.field private static sInstance:Lcom/mpaas/nebula/adapter/api/MPTinyHelper;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mEnvProvider:Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

.field private mInsideCustomProvider:Lcom/alipay/mobile/nebula/provider/H5InsideCustomProvider;

.field private mLoadingClassName:Ljava/lang/String;

.field private mOpenCardHandler:Lcom/mpaas/nebula/adapter/api/OpenCardHandler;

.field private mScheme:Ljava/lang/String;

.field private mVHost:Ljava/lang/String;

.field private mVersionName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mAppName:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mVersionName:Ljava/lang/String;

    .line 28
    const-string v0, "mpaas"

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mScheme:Ljava/lang/String;

    .line 30
    const-string v0, "h5app.com"

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mVHost:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mLoadingClassName:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper$1;

    invoke-direct {v0, p0}, Lcom/mpaas/nebula/adapter/api/MPTinyHelper$1;-><init>(Lcom/mpaas/nebula/adapter/api/MPTinyHelper;)V

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mInsideCustomProvider:Lcom/alipay/mobile/nebula/provider/H5InsideCustomProvider;

    .line 51
    new-instance v0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper$2;

    invoke-direct {v0, p0}, Lcom/mpaas/nebula/adapter/api/MPTinyHelper$2;-><init>(Lcom/mpaas/nebula/adapter/api/MPTinyHelper;)V

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mEnvProvider:Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 135
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mEnvProvider:Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5InsideCustomProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mInsideCustomProvider:Lcom/alipay/mobile/nebula/provider/H5InsideCustomProvider;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/mpaas/nebula/adapter/api/MPTinyHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/nebula/adapter/api/MPTinyHelper;

    .line 20
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mVHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mpaas/nebula/adapter/api/MPTinyHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/nebula/adapter/api/MPTinyHelper;

    .line 20
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mLoadingClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mpaas/nebula/adapter/api/MPTinyHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/nebula/adapter/api/MPTinyHelper;

    .line 20
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mpaas/nebula/adapter/api/MPTinyHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/nebula/adapter/api/MPTinyHelper;

    .line 20
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mpaas/nebula/adapter/api/MPTinyHelper;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mpaas/nebula/adapter/api/MPTinyHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->launchUrl(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/mpaas/nebula/adapter/api/MPTinyHelper;
    .locals 1

    .line 126
    sget-object v0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->sInstance:Lcom/mpaas/nebula/adapter/api/MPTinyHelper;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;

    invoke-direct {v0}, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;-><init>()V

    sput-object v0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->sInstance:Lcom/mpaas/nebula/adapter/api/MPTinyHelper;

    .line 129
    :cond_0
    sget-object v0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->sInstance:Lcom/mpaas/nebula/adapter/api/MPTinyHelper;

    return-object v0
.end method

.method private launchUrl(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mScheme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 184
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 185
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "scheme":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v3, "newParams":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mScheme:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 188
    const-string v4, "appId"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "appId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 190
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 191
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 192
    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v6    # "key":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {v3, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 196
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v4, 0x0

    .line 197
    invoke-interface {v1, v4, v5, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 198
    const/4 v1, 0x1

    return v1

    .line 201
    .end local v5    # "appId":Ljava/lang/String;
    :cond_3
    return v1

    .line 182
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v2    # "scheme":Ljava/lang/String;
    .end local v3    # "newParams":Landroid/os/Bundle;
    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public getMiniProgramSetting(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 226
    return-object v1

    .line 228
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    .line 229
    .local v0, "apiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    if-eqz v0, :cond_1

    .line 230
    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;

    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPLogger;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->getAllPermissions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 232
    :cond_1
    return-object v1
.end method

.method public getOpenCardHandler()Lcom/mpaas/nebula/adapter/api/OpenCardHandler;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mOpenCardHandler:Lcom/mpaas/nebula/adapter/api/OpenCardHandler;

    return-object v0
.end method

.method public launchIdeQRCode(Landroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "qrcode"    # Landroid/net/Uri;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 156
    const/4 v0, 0x0

    const-string v1, "MPTinyHelper"

    if-nez p1, :cond_0

    .line 157
    const-string v2, "launchIdeQRCode is null."

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return v0

    .line 160
    :cond_0
    if-nez p2, :cond_1

    .line 161
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object p2, v2

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "scheme":Ljava/lang/String;
    const-string v3, "mpaas"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    const-string v3, "scheme"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "schemeParam":Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 167
    .local v4, "schemeUri":Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launchIdeQRCode schemeUri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 170
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 171
    .local v5, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    if-eqz v5, :cond_2

    .line 172
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, p2}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 176
    .end local v3    # "schemeParam":Ljava/lang/String;
    .end local v4    # "schemeUri":Landroid/net/Uri;
    .end local v5    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    :cond_2
    const-string v3, "launchIdeQRCode scheme not match."

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 140
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mAppName:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setApplicationUriScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mScheme:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setLoadingViewClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView;",
            ">;)V"
        }
    .end annotation

    .line 236
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView;>;"
    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mLoadingClassName:Ljava/lang/String;

    .line 239
    :cond_0
    return-void
.end method

.method public setOpenCardHandler(Lcom/mpaas/nebula/adapter/api/OpenCardHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/mpaas/nebula/adapter/api/OpenCardHandler;

    .line 205
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mOpenCardHandler:Lcom/mpaas/nebula/adapter/api/OpenCardHandler;

    .line 206
    return-void
.end method

.method public setTinyAppVHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "vhost"    # Ljava/lang/String;

    .line 152
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mVHost:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mVersionName:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public updateMiniProgramSetting(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "isAllowed"    # Z

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    .line 217
    .local v0, "apiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    if-eqz v0, :cond_1

    .line 218
    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;

    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPLogger;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->changePermissionByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 219
    const/4 v1, 0x1

    return v1

    .line 221
    :cond_1
    return v1

    .line 214
    .end local v0    # "apiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    :cond_2
    :goto_0
    return v1
.end method
